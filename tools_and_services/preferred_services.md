# Preferred Services

Finding a balance between trying out a new service or using a well-known tool is tricky. There are several things to consider: can a tool that we previously used solve the problem? Is the learning curve of the new tool justified by the gained efficiency? Is the new (or old tool) GDPR compliant?
As the matter is tricky, simply listing previously used tools is not enough. Instead, we have a three-color system.

Policy: when choosing a new provider,

# Green list

These services have been widely used at Abtion, and they usually provide the necessary functionality that we expect from them.
If there is a service in this category, but the team wants to use a different one, the team must first check with the Principal Engineer or CTO.

## Sending and receiving SMS
We prefer to use [InMobile](https://www.inmobile.com/) for sending and receiving SMSes.

# Yellow List

We've used the services before, and we are satisfied. The services in this list should be the first option to consider on a team, although the team can decide to use a different tool if there is a good reason behind it.

## Mailing
[SendGrid](https://sendgrid.com/), in Heroku: use the free Starter addon (Automatically added by [Muffi](https://github.com/abtion/muffi)).
Remember to set up DKIM (under sender authentication -> domain authentication).

### Mail testing
Use [mail-tester](https://www.mail-tester.com) to test mail setup.

### Mailtrap
Use [Mailtrap](https://mailtrap.io) for staging/review-apps.

# Red List

The services in this list have been used or analyzed, and they do not live up to Abtion standard. A team must request permission from the Principal Engineer or CTO before using this tool on a production system.
