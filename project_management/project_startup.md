# Project startup
## General

When starting a new project for a client, we try tro to be consistent with resource allocation.

You can read more about basic rules & culture surrounding these resources in [Access and permissions](https://inside.abtion.com/tools_and_services/access_and_permissions).

Note that a big part of the startup process & best practices examples are covered by our project templates [MuffiRails](https://github.com/abtion/muffi) &  [MuffiNet](https://github.com/abtion/muffi.net).

## Google groups setup
- projectname@abtion.com
- invite the team by person email
- correct the settings
  - activate the shared inbox
  - tag/filter with project name

## Heroku
- projectname@abtion.com
- invite team
- invite admin@abtion - as admin
- add credit card until client can take over after the 1. onboarding phase
- create new pipeline
  - project name + connect to Github + select Abtion as owner (not admin@abtion.com)

## Github
- create in admin@abtion team called: project
- add members of the team
- create a repo, prive
- add repo in the team
-   change to admin role
- in abtion: add the repo with read role


## Azure:
- Sign in to Google as the project Google Group
  - The password should at this point be stored in 1password under the project's vault  
- Continue to [Azure](https://portal.azure.com) & create a subscription as the Google Group
  - Update the Asana licenses overview as per [Purchasing licenses and memberships](https://inside.abtion.com/tools_and_services/purchasing_licenses_and_memberships) 
- in Azure, under *Cost Management + Billing - Invoices*, add invoice recipient admin@abtion.com
- Also in Azure, make a *Resource Group* containing the project name which should be used for all project resources
  - from the *Resource Group - Access control (IAM)*, add admin@abtion.com & the email of each Abtion project member who needs access


