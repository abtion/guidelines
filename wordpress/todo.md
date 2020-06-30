## To do

### Plugins library
- Create repo for this

### ACF content builder

### Git flow

All projects will have a `staging` and `main` branch.

The `staging` branch is used for customer testing and is deployed to our staging environment.

The `main` branch is for production only.

All feature branches will be based off of the `main` branch.

#### The workflow will be as follows:
1. Pull Requests (PR), will be feature branch -> `main`.
2. Whenever a feature branch is done, merge the latest `main` and check everything is still working
3. Request a code review if you feel the need
4. Merge the branch into staging for the customer and project manager to test.
5. When things have been approved: merge it into `main` and delete it.


 #### Things to remember:

NEVER merge branches directly into `main` - only through approved PRs
Handle merge conflicts in your own branches
Always make sure that the branch that is merged into staging, is identical with the one being merged into `main` (i.e, if you make changes on a branch going through review on staging, make sure those changes also go onto staging before merging the PR)

 ### Docker with WP-CLI

 ### Update wp-install.sh script
 - Insert barebone theme (create repo for this)
 - Create more steps (yoast, sendinblue, default wp login, insert removal of emoji, install wp clean up)
