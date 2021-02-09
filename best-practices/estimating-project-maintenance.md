## Maintenance window goal

When we stop actively working on a project, the project moves to the maintenance phase. Any project that does not have a full-time team on it is considered to be on maintenance. The maintenance window goal is to ensure that the project does not go to a state where we would not want to work on it. The maintenance window also serves as a pragmatic way of bulking tasks to reduce context-switch.
The maintenance window is not a tool for moving a project out of the legacy status nor to develop new functionality.

During a planned maintenance window, the DI team will:
- Update security vulnerabilities (by Dependabot).
- Check the Asana board for any reported bugs and fix them.
- Check error tracking (Rollbar) and fix them.
- Check the Asana board for any small prioritized task
- Monitor app. Check Heroku metrics and add-ons. Are add-on plans correct? Do we need to upgrade resources?
- Check the Asana board for chores.
- Update Ruby
- Update Rails
- Update other libraries (most relevant first)
- Create new tests

Note that it is not expected that the team performs all actions during a maintenance window. The team will assess what is the most important for the project.

SLAs are paid per hour. If a task cannot be completed on the scheduled maintenance window (like a major Rails update, or a tricky bug), we will inform the client.

## Estimating a maintenance window.

To get to a first estimate, the team may use a point system based on 4 common factors:

- Frequent small changes requested
- Large app
- High traffic
- Legacy code / Low test coverage

The project is classified depending on how many items are relevant to the project.

- High maintenance: 3 or more items. 30 hours monthly
- Medium maintenance: 2 items: 30 hours quarterly
- Low maintenance: 0-1 items: 30 hours semi-annually.

The team working on the project should determine the relevant maintenance window based on all the information they have. The above method should be used as a reference, and it is a good conversation starter.

## Scheduling the maintenance window

After the customer has approved the maintenance window, the PM will schedule a task on the Digital Infrastructure board.
