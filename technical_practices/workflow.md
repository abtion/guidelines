# Abtion's development workflow

Abtion’s development workflow may vary depending on the project. Teams are encouraged to experiment with the most efficient way to reliably deliver value to our clients. The standard flow is described here. It should be the base from where teams start. When a team discovers a more efficient way of working, they should contribute it back to this document.

## Our philosophy:

- We trust our colleagues as professional developers.
- We engage in discussions with an eye on productivity. We accept that a discussion might be counter-productive if the time we spend debating surpasses the benefits of the discussion.
- We accept that we might be wrong.
- We want to improve any codebase we work on.
- We want to learn.
- We want to educate our co-workers.

## Goals

- Deliver quality code at a fast pace.
- Allow for all team members to be informed of the changes.
- Have a low defect and regression rate.
- Have a fast acceptance rate by the product owner or client.
- Be flexible to any sudden change in priority.

## Workflow
We follow [trunk-based development](https://trunkbaseddevelopment.com). The goal is to avoid long-lived branches, differences between environments, and deliver value to our clients as soon as possible. This way, we reduce knowledge gaps within the team and with the client.

Following a trunk-based development workflow means that some pre-integration steps are highly recommended. These will usually be in the form of [Git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks), and run test suites and linters on `pre-commit` / `pre-push`.

- Developers work in pairs.
- A pair always takes the first card from the backlog. The backlog is already prioritized.
- A pair will pull from `main`* and make sure to be up-to-date with the latest changes.
- A pair will work on the card until it is ready. Pair switches might occur during the process.
- Every commit is [signed](../setup/gpg_signing.md), [Co-authored](https://github.blog/2018-01-29-commit-together-with-co-authors/), and has passed the `pre-commit` hooks.
- When the work is done, the pair pushes the changes. This will trigger the `pre-push` hooks and ensure the changes' validity.
- Github Actions (or pragmatically-picked alternatives) are used for continuous integration.
- We automatically deploy to production. We may use a test environment** which must always be synchronized with production with private information obfuscated for security. We may use feature flags for coordinating feature releases with the client.
- Feature acceptance is done by the product owner*** in the test environment.
- Technical chores acceptance is done by developers*** in the test environment.
- A pair may request feedback from other developers by asking them directly. Feedback is frequently gathered and demanded from the product owner during meetings, as well as asynchronously (Asana, Slack, ...) to ensure that the right product is being developed.
- A "daily diff" meeting can be set up to review the code changes of the past day and give a chance to every team member to understand the changes.
- The developers have the responsibility to move the card to a "Ready for acceptance” column in Asana. This implies that they genuinely believe the card is ready. The card is assigned to the tester.
- If the backlog runs out of tasks, developers will let the product owner know, and will work on technical debt until the product owner has prioritized feature work.

\* `main` might have a different name depending on the project. We strive to use an [inclusive language](../behaviour_and_protocol/inclusive_language.md)

** called staging in Heroku. Do not confuse with staging from git-flow.

*** acceptance must be done by the client whenever possible. The product owner from Abtion will have the responsibility to find the right tester.

### FAQ

#### Does it mean I can't use feature branches?

No, but feature branches have to be used carefully. Trunk-based development allows for short-lived feature branches.
If you are confident that your branch will not live longer than 1-2 days, then it should not be an issue.
You can read more about short-lived feature branches in the context of trunk-based development [here](https://trunkbaseddevelopment.com/short-lived-feature-branches/).

#### How should we handle cases where the developers are ready with the changes, but the client isn't?

While branching out is tempting, there are other, often better options.
The use of a [feature flag](https://trunkbaseddevelopment.com/feature-flags/) or
[abstraction](https://trunkbaseddevelopment.com/branch-by-abstraction/) are the most common.
