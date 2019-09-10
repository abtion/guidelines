
Abtion Rails deployment environment guidelines:

Draft v0.1
Authors: 
	Geoff Hubbard gh@abtion.com
	Heather Moore hm@abtion.com

Are we all-in on Heroku?

CI:
Github CI?
Travis CI?
Heroku CI

Pipelines for promoting apps from staging to production.
Automatic deploy from GitHub commits to master branch.
Preview apps.
Tests!

Development:
Local machine.
Postgres (version 9.x+?)

Staging:

Hobby Dyno - $7
Heroku Postgres - Hobby Dev - free
Rollbar - Error logging. free (if your app is generating errors there is a problem fix it.) (upgradable in-place if needed)
Papertrail - Log logging. free (Upgradable in-place if needed.)
Librato -  Application Performance Monitoring | Root Cause Analysis. - free


Production app:

Professional 1x Dyno - $25
Heroku Postgres - Standard 0 - $50

Rollbar - free (if your app is generating errors there is a problem fix it.) (upgradable in-place if needed)
Papertrail - free (Upgradable in-place if needed.)
Librato - free


Needed solutions.

Automatic setup of these environments.
How to handle exceptions.
Setup of environment variables.
Seeding of dev/staging/preview database(s) with "production-like" data.


