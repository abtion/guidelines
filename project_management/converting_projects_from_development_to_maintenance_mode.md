# Converting Projects From Development Mode To Maintenance Mode

## 1. Create a maintenance window card
[Create a card](https://app.asana.com/0/1202299052095355/1205116132800075) that includes the correct period, status and available hours. WordPress projects follow a monthly maintenance period.

## 2. Error notification setup

If the project is active, we want team members to be notified. If the project is in maintenance mode, we want the Application Service Asana board to be notified.

### Notify the Google Group using Sentry self-hosted (preferred)

We run a self-hosted Sentry instance at [sentry.abtion.com](https://sentry.abtion.com).

1. Create a project in sentry.abtion.com for the client (if one does not already exist).
2. Configure the project's DSN in the application.
3. In Sentry, go to the project's Alert settings and add an alert rule:
   1. When: A new issue is created
   2. Action: Send a notification to the client Google Group email (e.g. client@abtion.com)
4. Remove any alert rules that point to individual team members.

### Notify the Google Group using Rollbar (alternative)

Use Rollbar if the project already has it set up and migrating to Sentry is not worth the effort.

1. In Rollbar, go to Projects → click the mail icon under integrations.
2. Change email alerts to notify only the client Google Group. Receive notifications on:
   1. New item
   2. Item Reactivated
   3. Reopened item

Click Edit → under Users choose the Client-Abtion user and remove all other checkmarks. If you are unsure which user is correct, go to Settings → Users and find the one with the client@abtion.com mail.

Delete any rules beyond the three above.

### Forward Google Group emails to Asana board

1. Add asana@abtion.com as a member of the Google Group.
2. Set "Subscription" to "Each email" (default).
3. Remove previous team members from the group.

Emails sent to the Google Group will be passed on to asana@abtion.com. Each email received there will be created as a new card in the Application Service Board in Asana.

The login for asana@abtion.com is in 1Password.

## 3. Update our [stack document](/tools_and_services/stack_and_services.md) in inside Abtion with new tools

## 4. Plan a post-mortem

## 5. Plan a Thursday-praise
A 15-20 minute after-lunch meeting where the team shares the accomplishments of the project with the rest of the company. This ritual is a celebration of our efforts, and it often mentions the challenges that the team had to overcome.
