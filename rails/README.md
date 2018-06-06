# Rails guidelines

## Starting a new project 

We have "Muffi Template" for starting a new project. Muffi template will create a Github repo, Staging app in Heroku, 
and set up the standard tools we always use at Abtion for a Rails project.

```
rails new name-of-the-app -m https://raw.githubusercontent.com/abtion/guidelines/master/rails/rails-template.rb
```

## Muffi Template
#### Requirements 
You need to have [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) installed in your computer with an account in "abtion" Team.
Ask your coworkers to add you to Heroku team if you are not there yet.

You can install Heroku CLI on mac:
```
brew install heroku/brew/heroku
```

You will also need [hub](https://hub.github.com/), a command-line wrapper for git that makes you better at GitHub.

On mac, you can use:
```
brew install hub
```

#### TODO

- Create app on [Travis](https://travis-ci.com/abtion/Wokshop)
- Dockerize the app with Docker and Docker-Compose
- Add basic scripts to run the app and other convenient actions
- Add standard README
- Integrate it with [sendinblue](https://www.sendinblue.com/)
- Integrate it with [rollbar](https://rollbar.com/)
- Add standard Rubocop configuration file

