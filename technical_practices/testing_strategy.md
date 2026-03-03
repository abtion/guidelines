# Testing Strategy

This document outlines Abtion's testing expectations and requirements across all projects.

## Standard Projects

### General Expectations

#### Critical Flows
All critical flows must be covered by end-to-end (e2e) tests, ensuring that key user journeys work correctly from start to finish.

#### Bug Fixes
Every bug fix must include a test that:
- Reproduces the original bug scenario
- Verifies the fix
- Guards against future regression

#### CI Requirements
**CI cannot merge if red** — this is non-negotiable.

All tests must pass before a merge. No exceptions.

### Backend

- **100% branch test coverage** is enforced as a CI rule
- Coverage gates are mandatory and will block merges if not met

### Frontend

#### Test Coverage
**100% branch test coverage** is required for:
- Utils
- Validation logic
- Data mapping functions

Individual lines may be excluded from coverage with an inline comment explaining the reason.

#### UI Testing Approach
- **Don't unit test the UI** — avoid testing implementation details of visual components
- **Test component logic** — focus on behavior, state management, and business logic within components

## AI-first Projects

AI-first projects benefit from testing just as much as standard ones and should follow the same rules. If the project also qualifies as short-term, the exceptions below apply.

## Exceptions & Special Cases

### Short-term Projects
Some projects are inherently short-lived — for example, a CMS used only to populate initial content for an app (e.g., Respons).
When the team and the client agree that a deliverable is "single-use", testing rules may be skipped.

### Legacy Projects

- New code in PRs should meet the same standards as new projects (100% branch coverage for backend, etc.).
- A legacy project may adopt a tailored testing strategy — if so, document it in the project's README.

### Projects Without Testing Tooling

- These rules only apply when adequate testing tooling exists. We currently lack an e2e setup for React Native mobile and most WordPress projects. Closing that gap is a technical leadership responsibility, not the team's.
- For WordPress specifically, logic defined in `functions.php` or custom APIs should still be tested following our principles.
