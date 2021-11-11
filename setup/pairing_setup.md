## Pair programming

### Committing as a pair

One of the many useful features of git, is the ability to know who may have knowledge about a specific part of the code. Git blame may have a terrible name, but it comes handy at times.

A side effect of pairing is that we lose half of the information of who coded something, as the default contributor is the developer who is hosting the pairing session.

To remediate this, we have to manually co-author our commit messages.

To make this task a bit easier, we have [a repo that hosts the accounts of our contributors](https://github.com/abtion/gitmessage).

### Using different keyboard layouts

To ease the use of different keyboards with different languages on the ***same laptop*** then we recommend using [Autokbisw - Automatic keyboard input source switcher](https://github.com/jeantil/autokbisw)

Have XCode installed and do `brew install jeantil/autokbisw/autokbisw`. Then copy paste the `.plist` file from the repo to your `~/Library/LaunchAgents/`. Reboot and enjoy typing.

To set a keyboard to a specific langauge: Type something with the keyboard so it's the last active used - then change the language. That's it!
