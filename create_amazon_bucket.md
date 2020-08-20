## Create a new amazon bucket

### Bucket
Use the naming convention `<product-name>-production`, `<product-name>-staging`

#### Region
We normally default to use `EU-Stockholm` but in theory this isn't as important, so if another region makes more sense choose a different one.

#### Settings
Under the section `Configure options` as a default we disable everything, it's only if the project require something specific such as versioning or server logging you should add it.

The only thing that is recommended, is to add `default encryption` with AES-256. This should be used if the bucket is suppose to handle sensitive information(ID's, documentation that can be referenced back to the client etc.)

#### Permissions
Block all public access, unless the bucket is accessed by a service where it's not required to be logged in.
It's fine to block all public access, you just have to create a token in your service that grants access to the data(Remember to set a time limit on the token)

### IAM user
You should never use the root access in your service, or the login that where used to create the bucket. There should be a IAM user for each bucket created, that way if one user is compromised, then it's only that specific bucket that is damaged.

1. Goto Security, Identity & Compliance < IAM
2. Then Access Management < Users
3. Click add user.


To make it easy to quickly connect the user to the bucket, when looking at the console, make the user name identical to the bucket name.
Since this is a user only used through the service/application, the only `access type` it should have access to is `Programmatic access`


Nothing else needs the be added to the user, just click next until you get a page showing the `Access Key Id` and `Secret` these needs to be stored in a secure location. Either add them directly in the `ENV` file or store them e.g. in a password manager so the team also has easy access to the information.


You can now click close. and should now have a user without any permissions, without access to anything(We will create the permissions later and add them to the user).


### IAM user - permissions
Click on the user you want to add the permissions to, and add `inline policy`
Go to the JSON tab, and replace the content showed with the snippet below:

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
        "arn:aws:s3:::<bucket>",
        "arn:aws:s3:::<bucket>/*"
      ]
    }
  ]
}
```

You can change the different actions, to either enable or disable more permissions, but this is what we recommend. This is giving you all the default CRUD permissions, to the bucket.

Remember to change the `<bucket>` to what ever you name your bucket in the first step.


