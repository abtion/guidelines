# Estimating

Estimates are key to what we do.

We are in the business of selling software creation hours. We want to do this as inexpensively as possible while maintaining a healthy revenue for growth and downtimes. As a group, we need to hold appropriate tension between cost and quality.

Estimates should be made by two developers at a minimum; estimates are shared, and ideally by the implementing team.
When you win and lose together, your estimates get even better.

## Derive duration

We focus on size estimates (how much), not duration estimates (how long). Related, but useful independently.
Estimates are a combination of effort, risk, complexity, etc. Separating size from duration enables agility in scheduling and iteration planning.

## Split the work

Before the work can be estimated, it has to be split into chunks of a manageable size. Depending on how reliable it needs to be (the estimate type), we will create user stories encompassing a larger amount of functionality or more detailed user stories that define a specific functionality. The team must focus on providing just enough details so that the client can make the right decision.

## T-shirt sizes

T-shirt sizes is the method we use to estimate software size.

The estimating team:

1. **Take one user story at a time.**
2. **Ensure that everyone involved knows what the end result will be like once the story is completed.** To achieve this, the team will discuss the feature until they have just enough common understanding to give a reasonable enough estimate. This could include what is not included in the story, different possibilities of implementation, concerns, assumptions, or ideas.
3. **Share their estimate (planning poker) as a t-shirt size** XS, S, M, L, or XL. XL is commonly referred as "a story that needs to be split before we can give an accurate enough estimate". XS is usually reserved for specifically small features.
4. **Assign a certainty level.** They make the difference between an optimistic scenario and the worst scenario. The certainty levels will multiply the best case scenario estimate by a factor to yield the worst case scenario. E.g. certainty 3 (uncertain) may have a factor of 4. Therefore, an M estimate defined as 2 pair days may take between 2 and 8 pair days of work.
5. **After all stories have a t-shirt size, decide how long it would take to develop each t-shirt size or use team velocity.** E.g., a new team believes they could finish 6 XS in a single day, or roughly one S. An M would take us a couple of days, and an L would be a whole week.


Each t-shirt size is only comparable to other t-shirt sizes and functionality. They are not tied to time. E.g. The team would kick-start a session by taking the first user story and agreeing that it is of size M. Then, they take the next story and agree it is an S. They take the third one and agree that it is roughly as the first one. At that time, they have 2xM and 1xS.

## Different estimate types

We distinguish between three types of estimates:

- Ballpark estimates for early-stage projects
- Iteration estimate
- One-off estimate of a maintenance project

Although depending on the estimate, we will have a slightly different process, the essence and general guidelines are the same.

### Ballpark estimates

During ballpark estimates, we do not go into details on how to implement things. We play with higher uncertainty.

Use the [ballpark estimate template](https://docs.google.com/spreadsheets/d/1DPnMyQUi-qWZ-hxCJOWxGpfaXf4JdrKjPZ9dJRa6Aps/edit#gid=349737991) when possible

### Iteration estimates

Already running teams can easily calculate their velocity by looking at how many estimated stories they can finish in a cycle. The amount of user stories finished by a team is called capacity. As the team matures, velocity estimates will tighten.

### One-off estimate of a maintenance project

Estimates in the DI team are related to small tasks in our maintenance systems. When the estimates are on small tasks, we may share directly our rough estimate in hours.

Resist the temptation to give a very precise estimate. Instead, use a range or certainty feeling. E.g., It will take between half a day and a day. Or I'm 80% sure that we can deliver this in under a pair-day of work.

After the task is estimated, we add the time it will take us to set up the project or any additional changes that must be made to complete the task. E.g., a DI project may not have seed data. To test our feature, we need to populate the database.

## Other considerations

- If you have a bit of work that the team does not know how to estimate, put a "spike card" in the backlog. A "spike" is like doing research.
- Reflect on your estimates during retro. When story estimates are not matching delivery expectations with the given probability, seek to understand why and bring knowledge into action items to improve the team process.
