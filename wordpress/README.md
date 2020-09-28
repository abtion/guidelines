# WordPress setup

## Table of Contents
- [Introduction](#introduction)
- [New WordPress site](#new-wordpress-site)
- [Existing WordPress site](#existing-wordpress-site)
- [Buddy (CD)](#buddycd)
- [Sentry](#sentry)
- [Git flow](#git-flow)


## Introduction
Working with WordPress locally requires you to have [Docker](https://www.docker.com/get-started) installed locally. Docker is using the [docker-compose-yml](https://github.com/abtion/wp-docker/blob/master/docker-compose.yml) to spin up multiple containers, to ensure the correct PHP, WordPress and MySQL versions.

This will require minimal work from you and will also allow you to use the [wp-cli](https://developer.wordpress.org/cli/commands/) commands.

This theme enables you to pick and choose if you would like to work with PHP or [Vue](https://vuejs.org/) for the specific thing you are doing - you can even do both.

### New WordPress site
Clone the [wp-docker](https://github.com/abtion/wp-docker) repo and follow these [instructions](https://github.com/abtion/wp-docker#1-spin-up-a-new-site).  
This project utilizes the [Muffi Theme](https://github.com/abtion/muffi-theme), follow its instructions to prepare the project for deployment

### Existing WordPress site
Clone the [wp-docker](https://github.com/abtion/wp-docker) repo and follow these [instructions](https://github.com/abtion/wp-docker#migrating-an-existing-site).  
This project utilizes the [Muffi Theme](https://github.com/abtion/muffi-theme), follow its instructions to prepare the project for deployment

### Buddy(CD)
We use [Buddy](https://app.buddy.works/login) as a CD.    
Within the [Muffi Theme](https://github.com/abtion/muffi-theme) you will find a `buddy.yml` file that handles the production and staging pipeline for continuous deployments.

### Sentry
We use sentry for all newly developed WordPress solutions.

Sentry helps us track down those bugs and/or performance issues that possibly could be introduced along releases.

Login to the WordPress team Sentry accound can be found in 1Password.

Sentry catches general issues that happens based off client behavior, but its also possible to catch exceptions in ex. a try catch function.

Sentry is per default installed within the [Muffi Theme](https://github.com/abtion/muffi-theme), exceptions can be caught with either PHP or with Vue/JS.

See examples:
- [PHP](https://docs.sentry.io/clients/php/)
- [Vue/JS](https://docs.sentry.io/sdks/javascript/errors/capture/)

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
