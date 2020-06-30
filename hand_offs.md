# Client Handoffs

Two week prior
1. Write an email including internal PM and client PM to set a date
and clarify any expectations around handoff at project end.
1. Be sure you have a complete [readme](https://github.com/abtion/guidelines/blob/main/standard_readme.md)
incluing any diagrams or introductions to libraries that are heavily used as
well as any known issues documented.
1. Add a handoff story to Asana with that due date
1. Request client Heroku account email, and have them add your email (temporarily) to their Heroku team
1. Request client email address to be used for notifications on addons
1. If they are new to Heroku, be sure to tell them they have to add a credit card in order to be able to complete the transfer

A couple days before
1. Make sure all related Heroku plugins are pointed to client notification email (ex:
librato alerts or rollbar alerts)

Day of
1. Remove Abtion emails from the addons and app
1. Make sure all (paid) PRs are closed and pushed to heroku. In most cases, it is appropriate to transfer all apps, but in some cases we may want to just send the production app. Confirm with sales.
1. Initiate transfer by having the new app owner add your email to their Heroku team
1. Transfer from https://dashboard.heroku.com/apps/client/settings in the GUI
1. Send email requesting removal of last account that was used for transfer

Integrations/dev infos outside of Heroku
1. Talk to client PM to have them create any environment key/values needed for
the app to run where we had been using our dev accounts. Maybe you have some of these:
- [  ] AWS
- [  ] Mapping service
- [  ] Mail Service
- [  ] Pingdom/Alerts
- [  ] CI/CD account
- [  ] Database URL and credentials
- [  ] Analytics account
- [  ] Scheduler service
- [  ] SMS/Push service
- [  ] Product management backlog (Asana or Tracker)
1. Guide PM through secure transfer of .env file or anything from 1Password (if we are passing on accounts
with keys that will be transitioned to clients, say a MapBox key that we signed up for
on their behalf)

Closing up
1. Remove any extra repos/apps. Ex: if you tranfer GitHub, be sure the Heroku is
removed.
1. Send email to client pm, and our pm stating that repo is transferred,
including the email it is transferred to along with the related plugins that
will be emailing them.
