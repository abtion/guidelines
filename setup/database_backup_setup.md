# Database backup setup

An s3 bucket (abtion-backups) has been created for securely storing encrypted database copies for clients with SLA.

## Scalingo

> **TODO:** This section needs to be written. Document how to set up automated database backups for Scalingo-hosted projects, including where credentials are stored and how to verify backups are running.

## Heroku

The AWS credentials for the user with write access to the bucket is in 1Password internal infrastructure vault (AWS backups - s3-uploader).

For detailed instructions, see: https://github.com/abtion/heroku-db-backup-s3

Use `abtion-backups` as bucket name.
Use `client name` for gpg real name.
Use `client-name@abtion.com` for gpg email address.

The gpg private keys should be moved to the `Technical Red Tape` vault or ask for it to be moved in #access-and-permissions slack channel.
