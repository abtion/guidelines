# Abtion's development workflow

Abtion’s development workflow may vary depending on the project. Teams are encouraged to experiment with the most efficient way to reliably deliver value to our clients. The standard flow is described here. It should be the base from where teams start. When a team discovers a more efficient way of working, they should contribute it back to this document.

## Our philosophy:

- We trust our colleagues as professional developers.
- We engage in discussions with an eye on productivity. We accept that a discussion might be counter-productive if the time we spend debating surpasses the benefits of the discussion.
- We accept that we might be wrong.
- We want to improve any codebase we work on.
- We want to learn.
- We want to educate our coworkers.

## Goals

- Deliver quality code at a fast pace.
- Allow for all team members to be informed of the changes.
- Have a low defect and regression rate.
- Have a fast acceptance rate by the product owner or client.
- Be flexible to any sudden change in priority.

## Workflow
We follow trunk base development. If you are not familiar with it, you can read on https://trunkbaseddevelopment.com. Specifically, we want to avoid large branches/differences between environments. They have been identified as a way to create a knowledge gap in the team and between the client.

- Developers work in pairs.
- A pair always takes the first card from the backlog. The backlog is already prioritized.
- A pair will work on the card until it is ready. Pair switches might occur during the process.
- We always branch out from main* and we merge to main.
- We use short-lived branches to play around with the code.
- When merging to main, we automatically deploy to production. We may use a test environment** which must always be synchronized with production with private information obfuscated for security. We use feature flags for coordinating feature releases with the client.
- Feature acceptance will occur by the product owner*** in the test environment.
- Tech Chore acceptance will occur by developers*** in the test environment.
- A pair will merge directly to main whenever they feel confident (see “we trust our colleagues as professional developers"). They may request feedback from other developers by asking them directly or indirectly opening a "Pull Request" in Github. They should gather feedback from the product owner during IPM, standup, Show & Tell and any necessary ad-hoc meetings to ensure that they are developing the right product.
- The developers have the responsibility to move the card to a "ready for acceptance” column in Asana. This implies that they genuinely believe the card is ready.
- If the backlog runs out of tasks, developers will let the product owner know, and will work on technical debt until the product owner has prioritized feature work.

\* main might have a different name depending on the project. We strive to use an [inclusive language](https://github.com/abtion/guidelines/blob/main/best-practices/inclusive-language.md)

** called staging in Heroku. Do not confuse with staging from git-flow.

*** acceptance must be done by the client whenever possible. The product owner from Abtion will have the responsibility to find the right tester.
