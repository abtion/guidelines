# Abtion Guidelines

Please, go to the specific folder for more info.


### Staging environment

**Developing the project:** No need for staging. As no one is using the project, there can (but should not) be "bugs" in production.
  
**Non-actively develop project:** No need for permanent staging environment. Whenever there is a task that needs to be tested by the client, a temporary staging environment should be spun up.

**Active development and app in production:** If there is a workorder on a project that is currently running in production, we should have a permanent staging environment to test the features.

The staging environment should be as close to production as possible. The staging environment should have ENV variables set as "production" instead of "staging".

We use Heroku pipelines for managing production and staging environments.

### Database Backups

Heroku-Postgresql databses include *FREE* scheduled backups, we just need to enable them using:

`heroku pg:backups:schedule DATABASE_URL --at '03:00 Europe/Copenhagen' --app APP_NAME`

### Pairing

***Please put your initials and name into the `.pairs` file of this repo.***

#### Install

We are using [git pair script from pivotal-legacy](https://github.com/pivotal-legacy/git_scripts)

```
gem install pivotal_git_scripts
```

See more setup instructions in the repo (RubyMine etc).  

***Different keyboards and languages***

To ease the use of different keyboards with different languages on the ***same laptop*** then we recommend using [Autokbisw - Automatic keyboard input source switcher](https://github.com/jeantil/autokbisw)

Have XCode installed and do `brew install jeantil/autokbisw/autokbisw`. Then copy paste the `.plist` file from the repo to your `~/Library/LaunchAgents/`. Reboot and enjoy typing. 

To set a keyboard to a specific langauge: Type something with the keyboard so it's the last active used - then change the language. That's it!




