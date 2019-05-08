# Abtion Guidelines

Please, go to the specific folder for more info.


### Staging environment

**Developing the project:** No need for staging. As no one is using the project, there can (but should not) be "bugs" in production.
  
**Non-actively develop project:** No need for permanent staging environment. Whenever there is a task that needs to be tested by the client, a temporal staging environment should be span up.

**Active development and app in production:** If there is a workorder on a project that is currently running in production, we should have a permanent staging environment to test the features.

The staging environment should be as close to production as possible. The staging environment should have ENV variables set as "production" instead of "staging".

We use Heroku pipelines for managing production and staging environments.

### Database Backups

Heroku-Postgresql databses include *FREE* scheduled backups, we just need to enable them using:

`heroku pg:backups:schedule DATABASE_URL --at '03:00 Europe/Copenhagen' --app APP_NAME`
