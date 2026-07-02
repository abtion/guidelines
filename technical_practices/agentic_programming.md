# PLAIbook — Abtion's AI-first work guidelines

This guide outlines good agentic development practices at Abtion.

Most of the information in here is merely recommendations. Devs free to deviate from these guidelines as they see fit. However! The output (commits, code, tests, etc.) should follow our best practices.

## Where we are, where we are headed

AI tools are improving rapidly, and so will this document.
This document describes the now, and thus won't focus a lot on - for instance - autonomouse agents (We simply haven't established best practices yet)

### Where we are now

- The developer is the architect (assisted by an agent with project context)
- All work is primarily implemented locally by developers, mostly with agentic programming

There are experiments with:
- AI agents autonomously generating pull requests based on project tasks.
- Standardizing task descriptions to make them more agent friendly (for both controlled and autonomous agents)
- Generating - the initial version of - minor projects based on designs from claude design.

### Where we - currently believe that we - are headed

- The developer is still the architect
- Initial boiler plate is generated from a design, based on a template
- Non-complex work is mostly done by autonomous AI agents (PRs reviewed/refactored if needed by human developers)
- Complex work is implemented locally by developers (still using agentic programming)

## Project setup checklist

In order to best facilitate agentic programming, it's important to provide the best possible context for the AI agents.

- [ ] `AGENTS.md` (and symlink it from `CLAUDE.md`)
- [ ] `docs/architecture.md` (this should explain the overall architecture of the project)
- [ ] `docs/features/*.md` (store information about specific project features here)
- [ ] `skills`

Some of these files will be pre-populated by our templates, but this information is obviously generic. Make sure to add information specific to the project at hand.

> [!TIP]
> If a project is large or complex, add separate files for different subjects. This will make it easier for the agent to find the right information without scanning the entire repository.

### A note on monorepos

In monorepo projects, do the project setup checklist per-project, then add `AGENTS.md` (and `CLAUDE.md`) to the project root. It should explain the monorepo structure and list all the projects.

## Prerequisites for agentic programming

- At least one coding agent installed, for instance:
  - Claude code
  - Codex
  - OpenCode
- A text editor for manual changes.

> [!TIP]
> There are many tools and editors available that facilitate agentic programming, either by providing their own agent harness, or by wrapping one or more coding agents. Tested and popular tools are:
> - Conductor
> - Cursor
> - VSCode + Claude extension
> - VSCode + Copilet
> - Zed

## A basic agentic programming workflow

Below is a good starting point for building with agentic programming, based on experiences from Abtion devs.
This is intentionally not an all-encompassing guide it's meant as a foundation to built on, and devs are expected to reshape the workflow to match how they prefer to work.

### 1. Have the project installed on your local machine

Follow the project instructions

### 2. Grab a task in the project management tool

Before working on a task, make sure that it feels workable.

An agent might help you understand what to do, but don't work on the task until you feel confident about what needs to be done.

### 3. Plan the development of the task with the AI agent

Feed the task to your agent, and let it plan the development of the task.

It is important that you refine the plan based on your own understanding of the task and the project. Make the agent to ask you about any unclear aspects or decisions to be made (you can use a skill like [grill-me](https://www.skills.sh/mattpocock/skills/grill-me) for this)

This step is where the bulk of the focus should be spent, don't rush through it.

> [!TIP]
> Use a good model for this step

> [!TIP]
> If the plan is long, break it into smaller steps that can be committed separately. This eases the burden of reviewing generated code.

### 4. Implement the task

When you feel confident about the plan, tell the agent to implement it (one step at a time).

> [!TIP]
> If the change isn't too complex, you can use a fast model for this.

After executing the plan (or step), manually test the change (if possible) to ensure it works as expected.

Depending on the complexity and importance of the change, review the code accordingly.

**IMPORTANT**: Changes to important business logic must be reviewed thoroughly. Stylistic changes can be reviewed more superficially.

> [!TIP]
> It can be a good idea to have another model review the code first, to filter out noise.

> [!TIP]
> Agents have a tendency to expand on code, even when it's not needed. Be on the lookout for unnecessary changes or one line utils.

### 5. Commit the change

When you are satisfied with the change, make a commit. Be sure to follow the [commit message guidelines](commit_messages.md).
Then, when you are ready; create a PR (ask for a review if necessary), wait for CI to pass, then merge it - like you would have done without AI assistance.

> [!IMPORTANT]
> Don't ask other devs to thoroughly review code that you have only superficially read yourself. If you are not entirely confident about the code (perhaps touching a part of the codebase you are not yet intimately familiar with), jump in a meeting rather than just passing on something you don't fully understand. It is disrespectful to ask others to do the work you didn't do yourself.

## Working on multiple tasks in parallel

Since it takes time for agents to reason about and generate code, it can feel inefficient to sit and wait for the agent to finish implementing a task.

The obvious solution is to work on multiple tasks in parallel, and many tools are built around or directly support this ([Conductor](https://www.conductor.build/), [Cursor](https://cursor.com/), [herdr](https://herdr.dev/), [Zed](https://zed.dev/), [VS Code](https://code.visualstudio.com/))

If you are using such a tool, it is recommended to have a separate [worktree](https://git-scm.com/docs/git-worktree) for each task (the tools usually has this built-in), to avoid conflicts.

However: It is our recommendation to be thoughtful about working on things in parallel. Based on an internal survey (June 2026), while devs tend to answer that parallel work makes them more productive, the conclusion is not very clear. Also no devs found it ideal to work on more than at most 3 tasks at a time.

> [!TIP]
> Try if you can spent the "idle" time on thinking about or researching the task at hand (or working on something that supports the task).

## Guidelines for AI-generated PRs (always draft, must pass CI, human review required)
## Guidelines for AI in client work (transparency, quality bar, what we tell clients)
## Prompt engineering basics and Abtion-specific patterns
## How to create and share skills across projects
