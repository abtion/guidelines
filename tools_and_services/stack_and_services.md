# Stack and services

###### Or Ab-_stack_-tion! 🤦‍♂️

This document lists the tools and services that we use on our projects.

Finding a balance between trying out something new or using a well-known tool is tricky. There are several things to consider: can a tool that we previously used solve the problem? Is the learning curve of the new tool justified by the gained efficiency? Is the new (or old tool) GDPR compliant?

## Programming languages

- JavaScript (TypeScript)
- Ruby
- C#

## Managing DBs and runtimes

- [asdf](https://asdf-vm.com/) to easily install the required runtimes for most of our projects
- [docker compose](https://docs.docker.com/compose/) to easily get the DBs started - using the right versions

.NET has its own built-in SDK manager.

### Javascript

- 🟢 npm
- 🟡 yarn
- 🔴 pnpm

## Frameworks

### Web apps

- [Ruby on Rails](https://rubyonrails.org/) using our [Rails template](https://github.com/abtion/muffi)
- [AdonisJS](https://adonisjs.com/) using our [Adonis template](https://github.com/abtion/adonisjs-template)
- [.NET](https://dotnet.microsoft.com/en-us/) using our [.NET template](https://github.com/abtion/muffi.net)

### Websites

- [Strapi](https://strapi.io/) as CMS
- [Next.js](nextjs.org/) as frontend (with or without CMS)
- [WordPress](https://wordpress.com/)\*

\* WordPress has its own [guideline](wordpress) as it's a whole separate ecosystem

### Mobile apps

- [React Native](https://reactnative.dev/)
- [Expo](https://expo.dev/)

## Tooling

### Testing

- [Jest](https://jestjs.io/) for JavaScript/TypeScript
- [Playwright](https://playwright.dev/) for JavaScript/TypeScript E2E
- [RSpec](https://rspec.info/) for Ruby
- [Capybara](https://github.com/teamcapybara/capybara) with headless-chrome for Ruby on Rails E2E
- [xUnit](https://xunit.net/) for C#

### Frontend

- [React](https://react.dev/)
- [Tailwind CSS](https://tailwindcss.com/)
- [SASS](https://sass-lang.com/)
- [BEM](https://getbem.com/)
- [Muffibook](https://muffibook.abtion.com/) (our component library using all of the above)
- [Figma](https://www.figma.com/)

### Databases

- [postgresql](https://www.postgresql.org/)
- [redis](https://redis.io/)
- [MS SQL Server](https://www.microsoft.com/en-us/sql-server/) only for .NET
- [MySQL](https://www.mysql.com/) only for WordPress

## Services

We have a three-color system, for keeping track of the services we've used and our experience with using them.

- 🟢 These services have been widely used at Abtion, and they usually provide the necessary functionality that we expect from them.
- 🟡 We've used the services before, and we are satisfied. The services in this list should be considered before the team decides to use a different tool.
- 🔴 These services have been used or analyzed, and they do not live up to Abtion standard.

Use the 🟢 services unless there's a good reason not to. If there is a 🔴 service that the team wants to use the team must first check with the Principal Engineer or CTO.

### Hosting

- PaaS (Platform as a Service)
  - 🟢 [scalingo](https://scalingo.com/) (European alternative)
  - 🟡 [heroku](https://heroku.com)
- Infrastructure
  - 🟢 [Scaleway Elastic Metal](https://www.scaleway.com/en/elastic-metal/) (European alternative)
  - 🔴 [gcloud](https://console.cloud.google.com/)
- Storage
  - 🟢 [Scaleway Object Storage](https://www.scaleway.com/en/object-storage/) (European alternative)
  - 🟡 [Amazon S3](https://aws.amazon.com/s3/)

### CI

- 🟢 [GitHub Actions](https://github.com/features/actions)

### CD

- 🟢 Through the chosen PaaS (Heroku / Scalingo)
- 🟡 Or GitHub Actions (for the more peculiar projects)

### Monitoring

- 🟢 [Sentry self hosted](https://sentry.abtion.com/)
- 🟡 [AppSignal](https://www.appsignal.com/)
- 🟡 [Rollbar](https://elements.heroku.com/addons/rollbar)
- 🟡 [New Relic](https://newrelic.com). In Heroku: use the addon.
- 🔴 [Papertrail](https://www.papertrail.com/) We prefer to use the self hosted sentry instead
- 🔴 [Sentry](sentry.io) In Heroku: use the addon. Avoid on small projects as it is cumbersome to set up to notify in Application Service when the project goes into maintenance.

### Emails

- 🟢 [Brevo(a.k.a. SendInBlue)](https://www.brevo.com/): You'll need to manually create a project account. Default configuration on [Muffi Rails](https://github.com/abtion/muffi). Remember to set up DKIM.
- 🟢 [Mailtrap](https://mailtrap.io) for staging/review-apps.
- 🔴 [SendGrid](https://sendgrid.com/) Countless issues when using the addon on Heroku. Accounts are banned on regular basis.
- 🔴 [MailGun](mailgun.com) Countless issues when using the addon on Heroku. Accounts are banned on regular basis.

### Mail testing

- 🟢 Use [mail-tester](https://www.mail-tester.com) to test mail setup.

### DNS management

- 🟢 Use [dns-configuration](https://github.com/abtion/dns-configuration) to manage the configuration.

### Sending and receiving SMS

- 🟢 [InMobile](https://www.inmobile.com/)

### Surveys

- 🔴 [Typeform](https://www.typeform.com/) Used in dao. When the responses hit the limit, it shows an error message. Not possible to hide the widget automatically. 
