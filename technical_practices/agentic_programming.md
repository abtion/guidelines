# PLAIbook — Abtion's AI-first work guidelines

This guide outlines good agentic development practices at Abtion.

Most of the information in here is merely recommendations. Devs are free to deviate from these guidelines as they see fit. However! The output (commits, code, tests, etc.) should follow our best practices.

## Where we are, where we are headed

AI tools are improving rapidly, and so will this document.
This document describes the now, and thus won't focus a lot on - for instance - autonomous agents (We simply haven't established best practices yet)

### Where we are now

- The developer is the architect with the vision, judgment, and responsibility. The agents execute the work with the relevant context.
- All work is primarily implemented locally by developers, mostly with agentic programming

There are experiments with:
- AI agents autonomously generating pull requests based on project tasks.
- Standardizing many parts of the flow to make them more agent-friendly. Right now that includes task descriptions, autofixing agents, and gathering, summarizing, and processing large contexts from multiple sources, including meetings.
- Generating - the initial version of - minor projects based on designs from claude design.

### Where we - currently believe that we - are headed

- The developer is still the architect
- Initial boiler plate is generated from a design, based on a template
- Non-complex work is mostly done by autonomous AI agents (PRs reviewed/refactored if needed by human developers)
- Complex work is implemented locally by developers (still using agentic programming)

## Project setup checklist

Agents work best when the right context is available for them to load when needed.

Use the following checklist to set up context for your project:

- [ ] `AGENTS.md` (and a `CLAUDE.md` symlink for claude compatibility). Should operate as an index file indicating where to find information in the whole repo, including documentation, skills, or any other source of context that is external to the repo.
- [ ] `docs/architecture.md`. Explains overall architecture of the project, reference in `AGENTS.md`
- [ ] `docs/decisions/*.md`. Information about important architectural decisions, referenced in `AGENTS.md`
- [ ] `.agents/skills/*`. Skills scoped to the project (for generally useful skills see: [how to create and share skills across projects](#how-to-create-and-share-skills-across-projects))
- [ ] `.agents/.mcp.json`. MCP server configuration, scoped to development of the specific project
- [ ] `.agents/skills/agent-setup/SKILL.md`. Sets up MCP servers and skills for the used agent (so that devs can just ask an agent to `invoke ".agents/skills/agent-setup/SKILL.md"`)

Some of these files will be pre-populated by our templates, make sure to adjust them for the project.

> [!TIP]
> If a project is large or complex, split the contents of `docs/architecture.md` file into separate sections. Then reference each section in an overarching `docs/architecture.md`. This will make it easier for the agent to find the right information without scanning the entire repository.

### A note on monorepos

In monorepo projects, do the project setup checklist per-project, then add `AGENTS.md` (and `CLAUDE.md` symlink) to the project root. It should explain the monorepo structure and list all the projects.

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
This is intentionally not an all-encompassing guide it's meant as a foundation to built on. Devs are - as always - free to reshape the workflow to match how they prefer to work.

### 1. Have the project installed on your local machine

Follow the project instructions

### 2. Grab a task in the project management tool

Before working on a task, make sure that it feels workable.

An agent might help you understand what to do, but don't work on the task until you feel confident about what needs to be done.

### 3. Plan the development of the task with the AI agent

Feed the task to your agent, and let it plan the development of the task.

It is important that you refine the plan based on your own understanding of the task and the project. Make the agent ask you about any unclear aspects or decisions to be made (you can use a skill like [grill-me](https://www.skills.sh/mattpocock/skills/grill-me) for this).

This step is where the bulk of the focus should be spent, don't rush through it.

> [!TIP]
> Use a good model for this step.

> [!TIP]
> If the plan is long, break it into smaller steps (vertical slices when possible) that can be committed separately. This eases reviewing burden and helps catching problems early.

### 4. Implement the task

When you feel confident about the plan, tell the agent to implement it, one step at a time.

> [!TIP]
> If the change isn't too complex, you can use a fast model for this.

After executing the plan (or step), manually test the change (if possible) to ensure it works as expected.

Review the code according to the complexity and importance of the change.

> [!IMPORTANT]
> Changes to business logic must be reviewed thoroughly. Cosmetic changes can be reviewed more superficially.

> [!TIP]
> To futher ease the review burden it can be a good idea to have another model review the code first.

> [!TIP]
> Agents can unnecessarily expand on code or add unwanted side effects. Limit the changes to the scope of the task and be on the lookout for side journeys into new unnecessary "bugfixes", utility functions, and services.

### 5. Commit the change

When you are satisfied with the change, make a commit. Be sure to follow the [commit message guidelines](commit_messages.md).
Then, when you are ready; create a PR (ask for a review if necessary), wait for CI to pass, then merge it - like you would have done without AI assistance.

> [!IMPORTANT]
> Don't ask other devs to thoroughly review code that you have only superficially read yourself. If you are not entirely confident about the code (perhaps touching a part of the codebase you are not yet intimately familiar with), jump in a meeting rather than passing on something you don't fully understand.

## Working on multiple tasks in parallel

Since agents often need time to run, it can feel inefficient to sit and wait for them to finish.

The obvious solution is to work on multiple tasks in parallel, and many tools are built around or directly support this ([Conductor](https://www.conductor.build/), [Cursor](https://cursor.com/), [herdr](https://herdr.dev/), [Zed](https://zed.dev/), [VS Code](https://code.visualstudio.com/))

It is recommended to have a separate [worktree](https://git-scm.com/docs/git-worktree) for each task to avoid conflicts. This is often something the tool will let you do out of the box.

Though spinning up many agents might seem like an obvious productivity boost, be thoughtful about working on things in parallel. Based on an internal survey (June 2026), while devs tend believe that parallel work make them more productive, the conclusion is not clear. Also all devs found it ideal to work on 1-3 tasks at a time.

> [!TIP]
> Instead of grabbing another task while the agent churns, try reflecting on the task at hand. There might be other ways to advance that task, avoiding excessive context switching.

## Guidelines for AI-generated PRs

On some projects we are experimenting with autonomous agents, letting them create and submit PRs on their own.

To avoid security and economic concerns, such as: agents getting stuck in loops, instructions interpretted too literally, and prompt injections, it is a requirement that autonomous agents:

- Do not have access to confidential keys and or tokens
- Are not able to commit directly to the main branch
- Can only submit draft PRs
- Have a hard TTL (e.g. they are killed if they take too long)

## Guidelines for AI in client work (transparency, quality bar, what we tell clients)


## Prompt engineering basics and Abtion-specific patterns

Is this still needed?

## How to create and share skills across projects

Currently we use [Brewale](https://brewale.dev) as our shared skill registry.

Brewale exposes skills and conventions via MCP, allowing whatever agent you use, to have access to the shared skill pool.

After connecting your agent to the Brewale MCP and instructing it to use it, skill exploration and usage should be automatic. The agent chooses what to use and when. Some skills may only be used if explicitly asked to.

### Quick start

You need an invite to the Abtion org on Brewale before any of this works - ask an admin to send one, then sign up from the link.

Then run the installer and follow the prompts:

```bash
npx brewale
```

It detects your agent (Claude Code, Codex CLI, Cursor, VS Code, Zed) and writes the MCP config for you. Verify with `npx brewale status`.

```json
{
  "mcpServers": {
    "brewale": {
      "type": "http",
      "url": "https://mcp.brewale.dev/mcp"
    }
  }
}
```

See the [Brewale docs](https://brewale.dev/docs) for details.

### Creating and sharing skills

Anyone can contribute a skill, in two ways:

- Open a PR to the [abtion/ai](https://github.com/abtion/ai) repo.
- Ask your agent to create the skill in Brewale. It ends up as a draft that you review and approve before it becomes available to everyone.
