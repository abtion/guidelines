# Setting up your Windows 11 machine for running rails projects

## Prerequisites

- Windows 11
- VS Code

## 1. Install Ubuntu in wsl

Open power shell and run the following command:

```powershell
wsl --install -d Ubuntu
```

The command will eventually will tell you to restart your machine. Do that.

After the restart the installation will continue, and eventually it will prompt you for a username and password for your new linux user.\
With the credentials in place, you will be launched into a linux terminal.

Now, before you move on, grab the latest package metadata:

```sh
sudo apt update
```

## 2. Install ZSH and Oh-my-zsh

```sh
sudo apt -y install zsh
chsh -s $(which zsh)
```

Open a new terminal window:

1. Press the "⋁" button in the top of the terminal window. Then select "Ubuntu".
2. Press "0" to setup zsh with an empty `.zshrc`-file
3. Run `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Done

## 3. Install asdf for zsh

Install required packages for asdf and ruby-build (which is used by the asdf ruby plugin):

```sh
sudo apt -y install curl git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev libpq-dev
```

Then install asdf:

```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc
source ~/.zshrc # Reload the zshrc configuration for the current session
```

Add plugins for rails and nodejs:

```sh
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

Done

## 4. Install docker

```sh
sudo apt -y install docker.io docker-compose-v2
sudo systemctl enable --now docker # Start docker
```

To let your user run docker without "sudo":

```sh
sudo usermod -aG docker ${USER}
```

You will need to log in again; just open a new (Ubuntu) terminal tab, then close the previous one.

## 5. Set up git

Setup your user

```sh
git config --global user.name "[YOUR NAME]"
git config --global user.email "[YOUR EMAIL]"
```

You can now either copy your SSH keys from Windows or generate a new keypair

- Copy SSH keys from Windows (requires SSH installed on Windows):

  ```sh
  cp -r /mnt/c/Users/[YOUR WINDOWS USERNAME]/.ssh ~/.ssh
  chmod 600 ~/.ssh/id_rsa # SSH requires the private key to have 600 permission
  ```

- Or generate a new key pair

  ```sh
  ssh-keygen -t ed25519 -C "[EMAIL USED FOR GITHUB]" # Generate the key
  cat ~/.ssh/id_ed25519.pub # Print the public key
  ```

  Then copy the public key and add it to your [github account keys](https://github.com/settings/keys).

Then check your connection with:

```sh
ssh -T git@github.com
```

### SSH Agent (optional)

If your key is password protected, you will be prompted for the password every time you connect to github (clone, pull, push, fetch etc.).\
To only get prompted once per boot, you can install an ssh agent:

```sh
sudo apt -y install keychain
echo 'eval ``keychain --eval --agents ssh id_*' >> ~/.zshrc
source ~/.zshrc # Reload zshrc for the current session
```

## 6. Install chrome

You will need to have chrome installed inside WSL for the selenium tests to work:

```sh
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install google-chrome-stable_current_amd64.deb
```

## 7. Get a rails project running (the rails-template)

```sh
git clone git@github.com:abtion/rails-template.git
cd rails-template
asdf install
```

Then in one tab, run the databases:

```sh
cd rails-template
docker compose up
```

With the databases started, open another tab to get the webserver running:

```sh
cd rails-template
bin/setup # First time setup
bin/rails s
```

You can now access the project on localhost (due to WSLs built-in port forwarding):
<http://localhost:3000>

## 8. Open a project with VS Code

1. Start VS Code
2. Install the package "Remote Development", it will add a "Remote explorer" entry in the side bar
3. In "Remote explorer", under "WSL Targets", open "Ubuntu"
4. You will now be able to open any folder in the linux file system using "File" > "Open Folder".
5. Open the "rails-template" folder
6. You can now use VS Code just like you would on a locally installed project

## Useful tricks

### File management

You can browse the WSL file system with Windows' file browser (there is an "Ubuntu" entry in the side bar).\
This is useful for managing assets.
