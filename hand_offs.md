# Client Handoffs

All Start
1. Two weeks before or more!, write an email including PMs on both sides to set the date 
and clarify any expectations around handoff at project end.
1. Be sure you have a complete [readme](https://github.com/abtion/guidelines/blob/master/standard_readme.md) 
incluing any diagrams or introductions to libraries that are heavily used as
well as any known issues.

Heroku apps
1. Make sure all related Heroku plugins are pointed to client emails (ex:
librato alerts or rollbar alerts)
1. Make sure all PRs are closed and push to heroku, then transfer the pipeline 
in the GUI. Client will setup their own github with what they pull from Heroku.


PHP apps
1. Transfer ownership in GitHub itself of all repos

All Finish
1. Talk to client PM to have them create any environment key/values needed for 
the app to run where we had been using our dev accounts.
- [  ] AWS
- [  ] Mapping services?
- [  ] Mail Service
- [  ] Pingdom/Alerts
- [  ] CI/CD stuff
- [  ] Database URL and credentials?
- [  ] Analytics accounts
- [  ] Scheduler services?
- [  ] SMS/Push services?
- [  ] Product management backlog (Asana or Tracker?)
1. Guide PM through secure transfer of .env file (if we are passing on accounts 
with keys that will be transitioned to clients, say a MapBox key that we signed up for
on their behalf)
1. Remove any extra repos/apps. Ex: if you tranfer GitHub, be sure the Heroku is 
removed.
1. Send email to client pm, and our pm stating that repo is transferred, 
including the email it is transferred to along with the related plugins that
will be emailing them.
