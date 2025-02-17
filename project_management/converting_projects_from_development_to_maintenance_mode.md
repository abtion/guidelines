# Converting Projects From Development Mode To Maintenance Mode

## 1. Create a maintenance window card
[Create a card](https://app.asana.com/0/1202299052095355/1205116132800075) that includes the correct period, status and available hours. WordPress projects follow a monthly maintenance period.

## 2. Error notification setup

If the project is active, we want team members to be notified. If the project is in maintenance mode, we want Application Service Asana board to be notified.

### Notify the Google Group using Rollbar.
1. Setup Rollbar (if using Heroku, add it as an addon) using the team Heroku account.
2. In Rollbar go to - Projects in the left menubar - Click on the mail icon under integrations
3. Change the email alerts to notify only the team heroku account. Receive notifications on:
   1. New item
   2. Item Reactivated
   3. Reopened item

Do this by clicking Edit - Under users choose Client-Abtion user. Remove any other checkmark in the pop-up. If you are unsure which user is the correct one go to Settings - Users and look which user has the client@abtion mail.  

Remember to Delete the other rules if there is more then the three above.

### Notify the Google Group using Sentry.

1. Setup Sentry (if using Heroku, add it as an addon) using the team Heroku account created in step 4. You'll need the tier Team (small).
2. Invite the team Google Group to the project (you will need to create a Sentry account with this email).
3. Change the email alerts to notify only the team heroku account.
   1. When: A new issue is created
   2. Send a notification to team@abtion.com

### Forward Google Group emails to Asana board

1. Add asana@abtion.com as a member of the Google Group.
2. Select "Subscription" to "Each email" (default)
3. Remove previous team members from the group.

Emails sent to the Google Group will be passed on to asana@abtion.com. Each email received in asana@abtion.com will be created as a new card in the Application Service Board in Asana.

The login for asana@abtion.com is in 1Password.

## 3. Update our [stack document](/tools_and_services/stack_and_services.md) in inside Abtion with new tools

## 4. Plan a post-mortem

## 5. Plan a Thursday-praise
A 15-20 minute after-lunch meeting where the team shares the accomplishments of the project with the rest of the company. This ritual is a celebration of our efforts, and it often mentions the challenges that the team had to overcome.
