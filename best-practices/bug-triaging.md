# Bug triaging
To remedy bugs, we have a certain procedure that we encourage you to follow.

## How to report bugs
1. Find a bug.
2. Ensure that the bug has not already been reported in Asana.
3. Check if the bug is still valid and reproducible.
4. Add an Asana card to the correct project:
  - Add a description of the bug and how it can be reproduced.
  - Add images to the task if applicable.
5. Prioritize the bug based on its severity.
  - If it is not severe then add it to the backlog and assign it to the project
    manager.
  - If it is severe, put it in the top of the backlog.

## How to fix bugs
1. Pick a bug from Asana.
2. Write a failing test or figure out why existing tests did not fail.
3. Make the test pass.

## Tools for preventing bugs
Recommended tools for catching bugs are:
- [Brakeman](https://github.com/presidentbeef/brakeman)
- [`bundler-audit`](https://github.com/rubysec/bundler-audit)
- [Code Climate](http://codeclimate.com/)
- [RuboCop](https://github.com/rubocop-hq/rubocop)

Code needs to be test-driven and written in pairs. This is the Abtion way and
has proven to minimize bugs.

## Additional reading
- [Bug Triage - Mozilla | MDN](https://developer.mozilla.org/en-US/docs/Mozilla/QA/Helping_the_DOM_team/Bug_Triage)
- [Bug management/How to triage - MediaWiki](https://www.mediawiki.org/wiki/Bug_management/How_to_triage)
- [Triaging Bugs - The Chromium Projects](http://www.chromium.org/getting-involved/bug-triage)
