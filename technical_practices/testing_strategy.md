# Testing Strategy

This document outlines Abtion's testing expectations and requirements across all projects.

## General Expectations

### Critical Flows
All critical flows must have end-to-end (e2e) tests. These tests ensure that the most important user journeys work correctly from start to finish.

### Bug Fixing
Every bug fix must include a new test that:
- Reproduces the bug scenario
- Verifies the fix works correctly
- Prevents regression in the future

### CI Requirements
**CI cannot merge if red** — this is non-negotiable.

All tests must pass before code can be merged. No exceptions.

---

## Backend

### Test Coverage
- **80% test coverage** is enforced as a CI rule
- Coverage gates are mandatory and will block merges if not met

---

## Frontend

### Test Coverage
**80% test coverage** is required for:
- Utils
- Validation logic
- Data mapping functions

### UI Testing Approach
- **Don't unit test the UI** — avoid testing implementation details of visual components
- **Test component logic** — focus on behavior, state management, and business logic within components
