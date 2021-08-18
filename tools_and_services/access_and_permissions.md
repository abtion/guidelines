## The basic rules and culture:

**We educate ourselves to be our own gatekeeper. Everyone is actively contributing.**

  - When asking for access to e.g. Heroku or 1Password vaults ALSO ask to be removed after a reasonable time after finishing the task. 
  - Only have access to the data and vaults that you are actively working on.
  - Ask to have access removed when you can enter data/vaults of projects you are not working on.

## 1Password structure:

### Main rules:
  - Always generate codes via 1Password and use Two-Factor Authentication when possible.
  - Always save it in the right Vault.
  - Delete unused licenses or logins for services and update vault members.
  - On critical systems admins should have separate accounts for special use only. For daily usage, they will use their private accounts with the necessary permissions.
  
### Vault organisation:

**1. Each project has their own Vault**

  - Only active teammembers have access to the Vault. 
  - When a team member is switching to another project, they ask to have their access removed.
  - The project's main developers (people with most knowledge) will keep access to the vault.

**2. Each team/department has their own Vault**

  - _PM, Marketing, Design, C-level, Sales:_ Shared logins should be categorised by department. Personal logins should be saved in private.
  - _Internal Infrastucture:_ Shared logins related to digital infrastucture that are not app specific. An item belongs to this vault if:
    - It offers functionality for development, it does not store client-sensitive data and is paid by Abtion. E.g. BrowserStack.
    - It contains information about several apps and is pending to be migrated into a client-specific plan. E.g. Rollbar.
  - _Technical Red Tape:_ Tech-related logins that are highly sensitive. E.g. Admin login for Heroku.
  - _Shared:_ Logins that are not sensitive and can be shared within the entire company. E.g. wifi code, educational logins, Kahoot.

You can request access to vaults through Slack in #access-and-permissions.

## Github

- Access is controlled through teams. Abtioneers are part of teams. Teams have access to repos. E.g. Wordpress team will have access to several repos.
- To give a better overview, members should not be granted direct access to any repo. 
- The Abtion team has read access to all repos. All Abtioneers are members of the Abtion team.
- Every new client with a developer team will have their own Github team. E.g. `danish-shipping`.
- Several teams may have access to the same repos. E.g. The Digital Infrastructure team may have access to some clients' repos while they are on maintenance.

You can request access to teams through Slack in #access-and-permissions.

## Heroku

- Access is controlled through teams. Abtioneers are part of teams. Teams have access to pipelines and apps.
- To give a better overview, members should not be granted direct access to any pipeline or app.
- Developers must have the "member" role in the team. 
- Abtion's admin and the client's Heroku account must have the "admin" role in the team.
- Abtion's admin will not be used for normal usage during development. The usage will be limited to admin-restricted action's such as granting and removing permissions.

You can request access to teams through Slack in #access-and-permissions.

## Managing accounts:

  - Keep the [license overview](https://app.asana.com/0/1149529931138025/list) up to date. This will help us track the activity on services and licenses as well as  make it easier to downgrade/upgrade when needed. 
  - We follow the basic structure of 1Password, creating a seperate 'section' for each project in Asana. 
