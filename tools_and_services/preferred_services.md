# Preferred Services

Finding a balance between trying out a new service or using a well-known tool is tricky. There are several things to consider: can a tool that we previously used solve the problem? Is the learning curve of the new tool justified by the gained efficiency? Is the new (or old tool) GDPR compliant?
As the matter is tricky, simply listing previously used tools is not enough. Instead, we have a three-color system.

- ![](https://via.placeholder.com/10/00c900/?text=+) Green list: These services have been widely used at Abtion, and they usually provide the necessary functionality that we expect from them.
If there is a service in this category, but the team wants to use a different one, the team must first check with the Principal Engineer or CTO.
- ![](https://via.placeholder.com/10/ffff00/?text=+) Yellow list: We've used the services before, and we are satisfied. The services in this list should be considered before the team decides to use a different tool.
- ![](https://via.placeholder.com/10/f03c15/?text=+) Red list: The services in this list have been used or analyzed, and they do not live up to Abtion standard. A team must request permission from the Principal Engineer or CTO before using this tool on a production system.

## Evaluated services
### DNS management
![](https://via.placeholder.com/10/00c900/?text=+) [Cloudflare](https://www.cloudflare.com/) Use [dns-configuration](https://github.com/abtion/dns-configuration) to manage the configuration.

### Sending and receiving SMS
![](https://via.placeholder.com/10/00c900/?text=+) [InMobile](https://www.inmobile.com/)

### Error management
![](https://via.placeholder.com/10/00c900/?text=+) [Rollbar](rollbar.com) In Heroku: use the addon. Default configuration on [Muffi Rails](https://github.com/abtion/muffi).

![](https://via.placeholder.com/10/f03c15/?text=+) [Sentry](sentry.io) In Heroku: use the addon. Avoid on small projects as it is cumbersome to set up to notify in Application Service when the project goes into maintenance.

### Mailing
![](https://via.placeholder.com/10/f03c15/?text=+) [SendInBlue](https://www.sendinblue.com/): You'll need to manually create a project account. Default configuration on [Muffi Rails](https://github.com/abtion/muffi). Remember to set up DKIM.

![](https://via.placeholder.com/10/f03c15/?text=+) [SendGrid](https://sendgrid.com/) Countless issues when using the addon on Heroku. Accounts are banned on regular basis.

![](https://via.placeholder.com/10/f03c15/?text=+) [MailGun](mailgun.com) Countless issues when using the addon on Heroku. Accounts are banned on regular basis.

### Mail testing
![](https://via.placeholder.com/10/ffff00/?text=+) Use [mail-tester](https://www.mail-tester.com) to test mail setup.

### Mailtrap
![](https://via.placeholder.com/10/ffff00/?text=+) Use [Mailtrap](https://mailtrap.io) for staging/review-apps.

### Log management
![](https://via.placeholder.com/10/00c900/?text=+) [Papertrail](https://papertrailapp.com/). In Heroku: use the addon.

### In-memory data store
![](https://via.placeholder.com/10/00c900/?text=+) [Heroku Redis](https://elements.heroku.com/addons/heroku-redis). Green for all apps hosted in Heroku.

### Performance monitoring
![](https://via.placeholder.com/10/ffff00/?text=+) [New Relic](https://newrelic.com). In Heroku: use the addon.

## FAQ

**The app I'm working on is using a red service. Should I switch to a recommended service?**
The app should change to a yellow or green alternative. If there are no alternatives, the maintenance team will continue with the service and check in the next maintenance window.

Apps should change services on active development (if it has been already budgeted on that round), or in the next maintenance window.
