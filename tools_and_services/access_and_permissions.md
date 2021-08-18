## The basic rules and culture:

**We educate ourselves to be our own gatekeeper. Everyone is actively contributing**

  - When asking permission to grant access to fx. Heroku or 1pw vaults, ALSO ask to be removed after a reasonable time finishing the task. 
  - Only have access to the data and vaults that you are actively working on
  - Ask to eliminate access when you can enter data/vaults of projects you are not working on.

## 1pw structure:

### Main rules:
  - Always generate codes via 1pw and use 2fa when possible
  - Always save it in the right Vault
  - Delete unused logins of licenses or services and update vault members
  - On critical systems, admins should have separate accounts for special use only. For daily usage, they will use their private accounts with the necessary permissions.
  
### Vault organisation

**1. Each project has their own Vault**

  - Only active teammembers have access to the Vault. 
  - When a team member is switching to another project, he/she ask's to have their access removed.
  - The project's main developers, (people with most knowledge), will remain access to the vault.

**2. Each team/department has their own Vault**

  - _PM, Marketing, Design. C-level, Sales:_ Shared logins categorised by department. Personal logins should be saved in private.
  - _Internal Infrastucture:_ Shared logins related to digital infrastucture that are not app specific. An item belongs to this vault if:
    - It offers development-wise functionality, it does not store client-sensitive data and is paid by Abtion. E.g. BrowserStack
    -  It contains information about several apps and is pending to be migrated into a client-specific plan. E.g. Rollbar.
  - _Technical Red Tape:_ Tech-related logins that are highly sensitive. E.g. Admin login on heroku
  - _Shared:_ Logins that are not sensitive and can be shared within the entire company. E.g. wifi code, educational logins, Kahoot.

You can request access to vaults through Slack #access-and-permissions.

## Google groups
- A google group will be set up per client, e.g. `danish-shipping@abtion.com`.
- The group will be used for creating client-specific accounts for services such as github, azure, etc.

## Github

- Access is controlled through teams. Abtioneers are part of teams. Teams have access to repos. E.g. Wordpress team will have access to several repos.
- To give a better overview, members should not get granted permissions directly to any repo.
- The Abtion team has read access to all the apps. All Abtioneers are members of the Abtion team.
- Every new client with a team will have their own team. E.g. `danish-shipping`
- Every client has a github account - using the team's google group. This account is added as a member of the client team.
- Several teams may have access to the same repos. E.g. The Digital Infrastructure team may have access to some clients' repos while they are on maintenance.

You can request access to teams through Slack #access-and-permissions.

## Heroku

- Access is controlled through heroku teams. Teams own project pipelines and apps. Abtioneers are members of teams
- To give a better overview, members should not get granted permissions directly on any pipeline or app.
- Every client has a heroku account - using the team's google group. This account is added to the heroku team as "admin"
- The client account is connected to the client specific github account and is used for connecting heroku pipelines and apps to github repositories.
- Developers must have a "member" role in the team.
- Abtion's admin must have "admin" role in the team.
- Abtion's admin will not be used for normal usage during development. The usage will be limited to admin-restricted action's such as granting and removing permissions.

You can request access to teams through Slack #access-and-permissions.

## Managing accounts:

  - Keep the [license overview](https://app.asana.com/0/1149529931138025/list) up to date. This will help us to track activity on services and licenses + will make it easier to downgrade/upgrade when needed. 
  - We follow the basic structure of 1pw, creating a own 'section' in asana for each project. 
