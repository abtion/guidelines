# WordPress setup

## Table of Contents
- [Introduction](#introduction)
- [New WordPress site](#new-wordpress-site)
- [Existing WordPress site](#existing-wordpress-site)
- [Buddy(CD)](#buddycd)


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
