WIP

# How do we guard our logins and manage access to project data and 1pw?

### The basic rules and culture:
**1. we educate ourselves to be our own gate keeper**
  - When asking permission to grand access to fx. Heroku or 1pw vaults, ALSO ask to be removed after a reasonable time finishing the task. 
  - Only have access to the data and Vaults that you are actively working on
  - Ask to eliminate access when you can enter data/Vaults of projects you are not working on.
**2. People granding access are Hari, Angelle and PM**

### 1pw structure:
**1. Main rules:**
  - Always generate codes via 1pw and use 2fa when possible
  - Always save it in the right Vault
  - Delete unused logins of licenses or services and update vault members
**2. Each project has their own Vault**
  - Only active teammembers have access to the Vault. 
  - When a team member is switching to an other projects, he/she ask's to decline access.
  - The project's main developers, (people with most knowledge), will remain access to the Vault.
**3. Each team/department has their own Vault**
  - PM, Marketing, Design. C-level, Sales: Relatively sentitive logins related team related. (All shared admin logins kategorised by department. Personal logins should be saved in private.
  - Internal Infrastucture: Relatively sentitive logins related to digital infrastucture. (fx. Rollbar, BrowserStack, etc.)
  - Technical Red Tape: Logins that are highly sentisivtive and tech related (fx. admin login on heroku, AWS, etc.)
  - Shared: Logins that are not sensitive and can be shared within the entire company. (fx. wifi code, educational logins, Kahoot, etc.)
**4. Alignment with License overview + Clients overview**
  - Keep the license overview up to date. This will help us to track activity on services and licenses + will make it easier to downgrade/upgrade when needed. 
  - We follow the basic structure of 1pw, creating a own 'section' in asana for each project. 

-> link to license overview + guidelines:
https://app.asana.com/0/1149529931138025/list
https://github.com/abtion/guidelines/blob/main/tools_and_services/purchasing_licenses_and_memberships.md
