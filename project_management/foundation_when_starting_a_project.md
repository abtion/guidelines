# Foundation when starting a project

## General

When starting a new project for a client, we try to be consistent with resource allocation.

You can read more about basic rules & culture surrounding these resources in [Access and permissions](https://inside.abtion.com/tools_and_services/access_and_permissions).

Note that a big part of the startup process & best practices examples are covered by our project templates [MuffiRails](https://github.com/abtion/muffi) &  [MuffiNet](https://github.com/abtion/muffi.net).

When setting up the codebase / hosting & security during startup, we set up the following
  - Github for Code & Continuous integration (Github Actions)
  - Google Groups for emails, notifications & access for the project team
  - Heroku/Azure for hosting client applications
  - 1password for secrets

## 1. Google groups setup 
- create a group [clientname]@abtion.com
  - Invite the team by person email
- Correct the Group settings:
  - Enable the Collaborative inbox
  - Enable 'Who can post' to ‘for anyone on the web’
  - Enable shared labels to tag incoming emails from google group in your personal inbox
  - Add subject prefix [clientname]
  
## 2. Create Vault in 1Password
- create new Vault with [clientname]
- Generate codes for all logins and activate 2fa following the guideline [Access and permissions](https://inside.abtion.com/tools_and_services/access_and_permissions)
  
## 3. Github setup
- create a new account [client@abtion.com]
- User name [client]-abtion
  
As admin@abtion.com on Github
- create a new team [clientname]
   - invite team members
   - invite [clientname] account for Heroku CI reasons (to connect with Heroku)
- create a repo [clientname]-[projectname]
- add repo in [clientname] team
   - change to admin role
- ensure 'read only' role in Abtion

## 4. Heroku project setup
- create a new account [clientname]@abtion.com
  - invite team by personal email
  - invite admin@abtion (as admin)
- add Abtion credit card until client can take over
- create new pipeline
  - 1.[clientname], 2. connect to Github, 3. select Abtion as owner NOT admin@abtion.com as owner
  - activate automatic deploys after connecting the account on Heroku

## 5. Azure:
- create a new account [client@abtion.com]
-   NOTE: Choose a date of birth that makes the age over 18 years old. fx. 1990. Otherwise you create a child azure account)
- Continue to [Azure](https://portal.azure.com) & create a subscription 
  - Start with free trial, add info and credit card info 
  - sign-up for Pay-as-you-go, NO technical support
- under Cost Management, 
  - add invoice recipient admin@abtion.com (not possible to add admin+billing+clientname@abtion.com)
- create a Resource Group containing the project name which should be used for all project resources
  - from the *Resource Group, go to Access control, + add role assignment
    - admin@abtion.com as owner
    - email of each team member as contributor
- Update the Asana licenses overview as per [Purchasing licenses and memberships](https://inside.abtion.com/tools_and_services/purchasing_licenses_and_memberships) 
