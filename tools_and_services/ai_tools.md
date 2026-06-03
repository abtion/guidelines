# AI Tools

This page defines which AI tools are approved for use at Abtion, what data can go into them, and what we expect from AI-assisted work.

## Approved tools

- 🟢 [Claude](https://claude.ai) - for chat-based assistance, reasoning, and writing
- 🟢 [Claude Code](https://claude.ai/code) - for agentic coding work (multi-step tasks, codebase exploration, scaffolding)
- 🟢 [GitHub Copilot](https://github.com/features/copilot) - for PR reviews and in-editor suggestions

Before introducing a new AI tool to a project, check with the Principal Engineer or CTO. Tools that send data to third-party servers require extra scrutiny for GDPR compliance.

## What data can go into AI tools

### Never send to external AI tools

- Personal data about users or clients (names, emails, CPR numbers, financial data, health data)
- Credentials, API keys, or secrets of any kind
- Client code or data that is subject to a confidentiality agreement, unless the tool has a confirmed data processing agreement (DPA) in place with Abtion

### Generally acceptable

- General programming questions and patterns
- Anonymised or synthetic data
- Internal code where no client confidentiality clause applies

When in doubt, anonymise the data before pasting it, or ask your manager. If a client has specific requirements around AI use, those take precedence over this policy - document them in the project README.

## Expectations for AI-assisted work

AI-generated code is held to the same standards as hand-written code. That means:

- **You own the output.** Committing code you cannot explain is not acceptable, regardless of how it was produced.
- **Review AI output critically.** AI tools hallucinate APIs, introduce subtle bugs, and sometimes over-engineer solutions. Treat AI suggestions as a starting point, not a finished answer.
- **Keep it lean.** AI tends toward verbosity. Remove anything that is not needed.
- **Tests still apply.** AI-generated code must meet the same test coverage requirements as any other code.

See the [progression framework](../career/software_engineer_progression_framework.md) for how AI usage expectations scale with seniority.
