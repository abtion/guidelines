# Commit Messages

The most important information in commit messages is *why* you made the change.

Nice to have:

* Summary of the changes (it helps when going back in history and trying to decide whether a change was accidentally added to commit).
* Thoughts about decisions you made.
* Links to Asana task, or other relevant info like a Github bug report, stackoverflow, etc.
* Keep the headline less than 50 characters, if possible.

https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/
> To come up with thoughtful commits, consider the following:
> * Why have I made these changes?
> * What effect have my changes made?
> * Why was the change needed?
> * What are the changes in reference to?

## Agent-generated commit messages

As long as the commit messages are good (according to the above advice), it is not important how they are made.

However, we do often see that agent-generated messages are:

- Just a compressed version of the code changes
- Not good at communicating the intention (the *why*).
- Too verbose (they are often overly long and include unimportant technical details)

To avoid this, devs are advised to write commit messages themselves, or at least put in some degree of effort to communicate intention.
This also works as a nudge towards understanding the code that will be committed.
