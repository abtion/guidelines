# GPG Signing with Git

## Install GPG
### MacOSX
Install gpg via homebrew: `brew install gpg`

## Create GPG Key

Set up a GPG key for your GitHub account by following the Github guide:
[Generating a new GPG key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)

Save your GPG signing key in 1Password.

## Adding the new GPG key to your GitHub account

Add the GPG key to your GitHub account (This is step 14 from the "Generating a new GPG key" guide)
[Adding the new GPG key](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-gpg-key-to-your-github-account)

## Configure git to default to signed commits

To set up GPG signed commits, replace YOUR_GPG_KEY id in the following script, and run it:

YOUR_GPG_KEY will be a long string of hex digits like: 981F5859DB768873A306424DAB0254A0AB3ECAA4

```sh
git config --global commit.gpgSign true
git config --global user.signingKey YOUR_GPG_KEY
```

You may want to use `--local` instead if you want to set up GPG signing (or use a different key) 
for only a specific repository. 

All Abtion projects should use signed commits.


## Make a signed commit

`git commit --allow-empty -m 'GPG signed commit'`

## Test that it worked


`git log --show-signature -1`

```sh
commit fa8004b481174e054057a4ea860588f5082b67a9 (HEAD -> main)
gpg: Signature made Mon 14 Sep 12:44:46 2020 CEST
gpg:                using RSA key 89F18595DB786873A360442DAB0524A0AB3CAE4A
gpg: Good signature from "Geoff Hubbard (Abtion Github Signing Key) <gh@abtion.com>" [ultimate]
Author: Geoff Hubbard <gh@abtion.com>
Date:   Mon Sep 14 12:44:46 2020 +0200

    GPG signed commit
```



## Issues

### Failed to sign
```
error: gpg failed to sign the data
fatal: failed to write commit object
```

Run `export GPG_TTY=$(tty)` in your terminal and try again.


### I don't like having to type my password in all the time.

To avoid having to enter you password for each commit, you can create a
`~/.gnupg/gpg-agent.conf` file with the following content:

```sh
default-cache-ttl 3600
max-cache-ttl 3600
```

This way you only have to provide your password once every hour.
Run `gpgconf --reload gpg-agent` to reload your updated GPG configuration.


