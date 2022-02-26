# Technical setup when starting a new project

## General

When starting a new project for a client, we try to be consistent with resource allocation.

You can read more about basic rules & culture surrounding these resources in [Access and permissions](https://inside.abtion.com/tools_and_services/access_and_permissions).

NOTE that a big part of the startup process & best practices examples are covered by our project templates [MuffiRails](https://github.com/abtion/muffi) &  [MuffiNet](https://github.com/abtion/muffi.net). These projects are examples of Abtions Internal Projects, which is the client. 
In other words: Muffi, Pomodoro and all other internal projects should be stored under internal-projects@abtion.com. 

When setting up the codebase / hosting & security during startup, we set up the following
  - Github for Code & Continuous integration (Github Actions)
  - Google Groups for emails, notifications & access for the project team
  - Heroku/Azure for hosting client applications
  - 1password for secrets

To kickstart a foundation for a new project, follow this plan step by step: 
## Preparation
- Make sure you have the right information for the foundation: 
  - Client name
  - Project name
  - Team members
  - Client' billing info
    -  Billing email
    -  Billing address
    -  Credit card information
- If by any reason you won't have access to the billing info in the stage of kickstarting the project:
    1. use Abtion's billing info and credit card (see 1pw)
    2. inform PM about this, and create a ticket in the project's Asana board to transfer billing to client
   

## 1. Google groups setup 
- create a group [clientname]@abtion.com
  - Invite team members
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
- add this user to 1Password
  
Login on Github as admin@abtion.com (requires admin role):
- create a new team in Abtion named [clientname]
  - invite team members
  - invite [client]-abtion account for Heroku CI reasons (to connect with Heroku)
- create a repo in Abtion named [clientname]-[projectname]
  - add repo in [Abtion team](https://github.com/orgs/abtion/teams/abtion/repositories)
    - ensure 'read only' role in Abtion
  - add repo in [clientname] team
    - change role to admin role

Setup automerge github action
  - sign in [client]-abtion github account
  - [create a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
    - Expiration: No expiration
    - Scopes: repo (Full control of private repositories)
  - create new repository secret in [clientname]-[projectname] settings/secrets/actions 
    - Name: AUTO_MERGE_TOKEN
    - Value: personal access token generated in previous step
  - create github automerge action
    - copy auto-merge.yml, dependabot.yml, workflows/auto-merge-dependabot.yml from [muffi/.github](https://github.com/abtion/muffi/tree/main/.github) into [clientname]-[projectname]/.github

## *4. Heroku project setup (NOT relevant for all projects)
- create a new account [clientname]@abtion.com
  - invite team members (as member)
  - invite admin@abtion (as admin)
- add clients credit card (unless not possible, add Abtion's until the Client can take over)
- Logged in on Github under [client@abtion.com] (In order to not make the connection sync with admin@abtion.com)
  - Create new pipeline
    1. Pipeline name: [clientname] 
    2. Pipeline owner: [clientname] team
    3. Connect to Github account. To find the repo, remember to select Abtion organization.
       NOTE: The pipeline should be connected to: abtion/[client name]-[project name] by [client]-abtion
       (Not through by adminabtion, as this wil break the connecting when handing over the project to the client)
  - activate automatic deploys after connecting the account on Heroku

## *4. Azure project setup (NOT relevant for all projects)
- create a new account [client@abtion.com]
  - NOTE: Choose a date of birth resulting to age 18+. (fx. 1990, otherwise you create a child azure account with user limitations)
- Continue to [Azure](https://portal.azure.com) & create a subscription 
  - Start with free trial 
    - add client billing info and credit card info (unless not possible, add Abtion's until the Client can take over)
  - sign-up for Pay-as-you-go
    - NO technical support
- under Cost Management 
  - add invoice recipient (client as default, otherwise admin@abtion.com (not possible to add admin+billing+clientname@abtion.com))
- create a Resource Group containing the project name which should be used for all project resources
  - from the *Resource Group, go to Access control, click on '+ add role assignment'
    - add admin@abtion.com as owner
    - add email of each team member as contributor
- Update the Asana licenses overview as per [Purchasing licenses and memberships](https://inside.abtion.com/tools_and_services/purchasing_licenses_and_memberships) 