# GPG Signing with Git
## Issues
### Commits cannot be signed
Run `export GPG_TTY=$(tty)` in your terminal.

### Commits are not signed automatically
To set up GPG signed commits, first run:

```sh
git config --local commit.gpgSign true
git config --local user.signingKey YOUR_GPG_KEY
```

You may want to use `--global` instead if you want to set up GPG signing for all
your projects (which is required for Abtion projects).

To avoid having to sign all of your commits, you can create a
`~/.gnupg/gpg-agent.conf` file with the following content:

```sh
default-cache-ttl 3600
max-cache-ttl 3600
```

This ensures that your commits are automatically signed for one hour, and after
one hour you need to provide your GPG password again. Run `gpgconf --reload
gpg-agent` to reload your updated GPG configuration.

If you have not set up a GPG key for your GitHub account, please read this
article:
[https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)
