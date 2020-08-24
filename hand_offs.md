# Client Handoffs

## Heroku Handoff

### Two weeks prior

1. Write an email to the internal and the clients PMs to set a date and clarify any expectations around the handoff at the projects end.
2. Be sure you have a complete [README](https://github.com/abtion/guidelines/blob/main/README.standard.md). Including:
    1. Any diagrams
    2. Introductions to noteable inclusions
    3. Known issues
3. Add a handoff story to Asana with the due date.
4. Confirm the scope of transfer with the sales team.
  1. It is usual to tranfer all apps/pipelines, but in some cases we may only want to tranfers the production app.
5. Request the clients Heroku account email.
  1. If they are new to Heroku, be sure to tell them they have to add a credit card in order to be able to complete the transfer.
6. Request client email address to be used for notifications on addons.

### A couple days before

1. Make sure all related Heroku plugins are pointing at the clients notification email (ex: librato or rollbar alerts)
2. Have the client create their own environment key/values needed for the app to run. Accounts like these:
   1. [ ] AWS
   2. [ ] Analytics account
   3. [ ] CI/CD account
   4. [ ] Database credentials
   5. [ ] Mail Service
   6. [ ] Mapping service
   7. [ ] Pingdom/Alerts
   8. [ ] Product management backlog (Asana or Tracker)
   9. [ ] SMS/Push service
   10. [ ] Scheduler service
3. Securely transfer the rest of the `.env` file or anything remaining in 1Password to the client.
4. Make sure all (paid) PRs are merged/closed and deployed to Heroku.

### On the day

1. Remove Abtion emails from the addons and app.
2. Initiate the transfer by having the new app owner add your email (temporarily) to their Heroku team.
3. Transfer ownership from the apps settings to their Heroku team.
4. Finish the transfer by requesting the removal of the account added in step `2.`.

## Github Handoff

### Two weeks prior

1. Write an email to the internal and the clients PMs to set a date and clarify any expectations around the handoff at the projects end.
2. Be sure you have a complete [README](https://github.com/abtion/guidelines/blob/main/README.standard.md). Including:
    1. Any diagrams
    2. Introductions to noteable inclusions
    3. Known Issues
3. Add a handoff story to Asana with the due date.
4. Confirm the scope of transfer with the sales team.
  1. It is usual to tranfer just the `main` branch up to a certain SHA, but in some cases this may differ.
  2. Do they only pay for the code or also a handoff of environment key/values?
5. Request the clients Github organizations name.
  1. If they are new to Github guide them through the creation.

### A couple days before

1. Ensure all (paid) PRs are merged or closed.
2. Clean up all old branches.
3. Ensure that all developers delete any code they have locally.
4. If the client also paid for transfer of environment key/values, have them create their own. Accounts like these:
   1. [ ] AWS
   2. [ ] Analytics account
   3. [ ] CI/CD account
   4. [ ] Database credentials
   5. [ ] Mail Service
   6. [ ] Mapping service
   7. [ ] Pingdom/Alerts
   8. [ ] Product management backlog (Asana or Tracker)
   9. [ ] SMS/Push service
   10. [ ] Scheduler service
5. Securely transfer the rest of the `.env` file or anything remaining in 1Password to the client.

### On the day

1. Create a `Transfer <REPO_NAME>` Github team and add yourself to it.
2. Remove all other Github teams access.
3. Transfer the app from the 'danger zone' in the repos settings.
  1. The client will receive a confirmation email.
4. Finish the transfer by requesting removal of the 'Transfer Team' from the repo.

## Closing up
1. Remove any extra apps or repos.
  1. If you only tranfered a Github repo, be sure the Heroku app is removed.
  2. If you only tranfered a Heroku app, be sure the Github repo is removed or archived.
2. Send an email to the clients PM and our PM stating that the app and/or repo has been transferred, include the email they have been transferred to along with the related plugins that will be emailing them.
3. Close any accounts now no longer needed.
