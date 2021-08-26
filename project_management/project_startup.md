# Foundation when starting a project

## General

When starting a new project for a client, we try to be consistent with resource allocation.

You can read more about basic rules & culture surrounding these resources in [Access and permissions](https://inside.abtion.com/tools_and_services/access_and_permissions).

Note that a big part of the startup process & best practices examples are covered by our project templates [MuffiRails](https://github.com/abtion/muffi) &  [MuffiNet](https://github.com/abtion/muffi.net).

When setting up the codebase / hosting & security during startup, we set up the following
1. Github for Code & Continuous integration (Github Actions)
2. Google Groups for emails, notifications & access for the project team
3. Heroku/Azure for hosting client applications
4. 1password for secrets

## 1. Google groups setup 
- create a group <clientname>@abtion.com
- Invite the team by person email
- Correct the Group settings:
  - Enable the Collaborative inbox
  - Enable 'Who can post' for anyone on the web
  - Enable shared labels to tag incoming emails from google group in your personal inbo
  - Add subject prefix [clientname]
  
## 2. Create Vault in 1Password
- create new Vault with <clientname>
- save login + activate 2fa following the guideline [Access and permissions](https://inside.abtion.com/tools_and_services/access_and_permissions)
  
  ## Github
- create a new account <client@abtion.com>
- User name <client>-abtion
  
As admin@abtion.com on Github
- create a new team <clientname>
- invite team members
  - invite <client>-name account for Heroku CI reasons
- create a repo <clientname>-<projectname>
- add repo in <clientname> team
  - change to admin role
- ensure 'read only' role in Abtion

## Heroku project setup
- create a new account <clientname>@abtion.com>
  - add Abtion credit card until client can take over
- invite team by personal email + admin@abtion (as admin)
- create new pipeline
  - 1. <clientname>, 2. connect to Github, 3. select Abtion as owner (not admin@abtion.com)

## Azure:
- create a new account <client@abtion.com>
- Continue to [Azure](https://portal.azure.com) & create a subscription 
  - Start with free trial, add infor and creditcard info, 
  - sign-up for Pay-as-you-go, !no technical support!

- under Cost Management, add invoice recipient admin@abtion.com (not possible to add admin+billing+etc)
- create a Resource Group containing the project name which should be used for all project resources
  - from the *Resource Group, go to Access control, + add role assignment
    - admin@abtion.com as owner
    - email of each project member as contributer
- Update the Asana licenses overview as per [Purchasing licenses and memberships](https://inside.abtion.com/tools_and_services/purchasing_licenses_and_memberships) 
