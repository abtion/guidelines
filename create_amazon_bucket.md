## Create a new amazon bucket

### Bucket
We use the naming convention `<product-name>-production` and `<product-name>-staging`


#### Region
We normally default to use `eu-north-1` aka. `Stockholm` but this may vary depending on where you and/or your customers are, so if another region makes more sense choose a different one.

#### Settings
Under the section `Configure options` we disable everything as a default, it's only if the project requires something specific such as versioning or server logging that you should enable it.

The only thing that is recommended, is to add the `default encryption` with AES-256. This should be used if the bucket is going to handle sensitive information (ID's, documentation that can be referenced back to the client etc.).

#### Permissions
Block all public access, unless you require otherwise.
It's fine to block all public access, you just have to create a token in your service that grants access to the data (Remember to set a time limit on the token).

### IAM user
No app should ever use the root user login! Nor should the login used to create the buckets be used. Create an IAM account for each bucket created, that way if one account is compromised potential damage is kept to a minimum and easy to fix.

1. Goto Security, Identity & Compliance < IAM
2. Then Access Management < Users
3. Click add user.


In order to easily identify which user connects to which bucket, name them both the same.  Since this is a user only used through the service/application, the only `access type` it requires is `Programmatic access`.


Nothing else needs to be added to the user, just click 'Next' until you get to a page showing you the `Access Key ID` and the `Secret Access Key`. These keys need to be stored in a secure location. Add them directly to the `.env` file, store them in a password manager, so the team also has easy access to the information, or both.


After clicking 'Close' you should have a user without any permissions or access to anything (we will create and add the permissions later).


### IAM user - permissions
Click on the user, you want to add the permissions to, and add `Inline policy`.
Go to the JSON tab and replace the content shown with the snippet below:

```JSON
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "VisualEditor0",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucketMultipartUploads",
        "s3:GetObjectRetention",
        "s3:DeleteObjectVersion",
        "s3:RestoreObject",
        "s3:ListBucket",
        "s3:ListMultipartUploadParts",
        "s3:PutObject",
        "s3:GetObjectAcl",
        "s3:GetObject",
        "s3:PutObjectRetention",
        "s3:PutObjectVersionAcl",
        "s3:GetObjectVersionAcl",
        "s3:DeleteObject",
        "s3:PutObjectAcl",
        "s3:GetObjectVersion"
      ],
      "Resource": [
        "arn:aws:s3:::<BUCKET_NAME>",
        "arn:aws:s3:::<BUCKET_NAME>/*"
      ]
    }
  ]
}
```

You can change the different actions to either enable or disable more permissions, but this is what we recommend. This is giving the user the default CRUD permissions for the bucket.

Remember to replace any occurance of `<BUCKET_NAME>` with name you choose for the bucket in the first step.

