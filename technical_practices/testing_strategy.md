# Testing Strategy

This document outlines Abtion's testing expectations and requirements across all projects.

## Standard Projects

### General Expectations

#### Critical Flows
All critical flows must have end-to-end (e2e) tests. These tests ensure that the most important user journeys work correctly from start to finish.

#### Bug Fixing
Every bug fix must include a new test that:
- Reproduces the bug scenario
- Verifies the fix works correctly
- Prevents regression in the future

#### CI Requirements
**CI cannot merge if red** — this is non-negotiable.

All tests must pass before code can be merged. No exceptions.

### Backend

- **100% branch test coverage** is enforced as a CI rule
- Coverage gates are mandatory and will block merges if not met

### Frontend

#### Test Coverage
**100% branch test coverage** is required for:
- Utils
- Validation logic
- Data mapping functions

Allow skipping lines by just adding a comment explaining why it is skipped.

#### UI Testing Approach
- **Don't unit test the UI** — avoid testing implementation details of visual components
- **Test component logic** — focus on behavior, state management, and business logic within components

## AI-first Projects

AI-first benefits from testing just as much as standard projects. Therefore, they should follow the same rules. Exceptions apply if it is also a "short-term project".

## Exceptions & Special Cases

### Short-term Projects
There are several side projects that have very low standards. An example is a short-lived CMS that our users will use to fill-in the content of an app where the content is not expected to change (Respons). 
When the team, together with the client define that this section is "single-use", all testing rules can be skipped. 

### Legacy Projects

- PRs should follow the rules for new projects. Meaning: 100% test coverage for backend, and so on.
- When working with a legacy project, a different testing strategy may be setup. Write it in the README.

### Projects Without Testing Tooling

- Abtion needs to have a testing method for these rules to apply. We are currently lacking a setup for React Native e2e in mobile, or most Wordpress. In those technologies, it is the task of technical leadership to bridge the gap. However, it is not expected that the team solves that issue. 
- In Wordpress, it is expected that logic such as those defined in functions.php or APIs are tested following our principles.
