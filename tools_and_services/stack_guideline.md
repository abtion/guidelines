# Abtion stack
###### Or Ab-*stack*-tion!  🤦‍♂️
![abtion image](https://media.giphy.com/media/ZVik7pBtu9dNS/giphy.gif)

In Abtion we strive for the easiest and most efficient workflow.
This document is thought of as being a resource we can turn to if we get in doubt about how we deal with managing certain stuff, such as CI/CD.
Also, to make it easier to on-board new employees.

## Programming languages

- JavaScript (TypeScript)
- Ruby
- C#

## Managing DBs and runtimes
- [asdf](https://asdf-vm.com/) to easily install the required runtimes for most of our projects
- [docker-compose](https://docs.docker.com/compose/) to easily get the DBs started - using the right versions

.NET has its own built-in SDK manager.

## Frameworks

### Web apps

- [Ruby on Rails](https://rubyonrails.org/) using our [Rails template](https://github.com/abtion/muffi)
- [.NET](https://dotnet.microsoft.com/en-us/) using our [.NET template](https://github.com/abtion/muffi.net)

### Websites
- [Strapi](https://strapi.io/) as CMS
- [Next.js](nextjs.org/) as frontend (with or without CMS)
- [Wordpress](https://wordpress.com/)*

\* Wordpress has it's own section further down the page as it's a whole separate ecosystem

### Mobile apps
- [React Native](https://reactnative.dev/)

## Tooling

### Hosting
- PaaS (Platform as a Service)
  - [heroku](https://heroku.com)
  - [scalingo](https://scalingo.com/)
- Storage
  - [Amazon S3](https://aws.amazon.com/s3/)
  - [Scaleway Object Storage](https://www.scaleway.com/en/object-storage/)

### CI
- [GitHub Actions](https://github.com/features/actions)

### CD
- Through the chosen PaaS (heroku / scalingo)
- Or github actions

### Monitoring
- [Rollbar](https://elements.heroku.com/addons/rollbar)
- [Librato](https://elements.heroku.com/addons/librato)
- [Papertrail](https://www.papertrail.com/)

### Emails
- [Sendinblue](https://www.sendinblue.com/)

### Testing
- [Jest](https://jestjs.io/) for JavaScript/TypeScript
- [PlayWright](https://playwright.dev/) for JavaScript/TypeScript E2E
- [RSpec](https://rspec.info/) for Ruby
- [xUnit](https://xunit.net/) for C#

### Frontend
- [React](https://react.dev/)
- [Tailwind CSS](https://tailwindcss.com/)
- [SASS](https://sass-lang.com/)
- [BEM](https://getbem.com/)
- [Muffibook](https://muffibook.abtion.com/) (our component library using all of the above)

### Databases
- [postgresql](https://www.postgresql.org/)
- [redis](https://redis.io/)
- [MS SQL Server](https://www.microsoft.com/en-us/sql-server/) only for .NET
- [MySQL](https://www.mysql.com/) only for WordPress

## WordPress

### Tools

#### Webpack
Automating SASS and Minify
https://webpack.js.org/

#### Buddy.works
Compile and deployment
https://buddy.works/

#### GitHub
Versioning of development
https://github.com/

#### Kinsta
Hosting of staging- and livesites
https://kinsta.com/

#### ManageWP
Overview, backup and updating of existing websites
https://managewp.com/

### Plugins

#### Advanced Custom Fields Pro
Handles integration with custom fields in Wordpress
https://www.advancedcustomfields.com/pro/

#### Polylang
Advanced translation/ multilanguage
https://polylang.pro/

#### WPML (phased out)
Translation/multilangua sites
https://wpml.org/
Phased out. Polylang takes over.

#### Really Simple SSL
Make sure that all requests is SSL
https://da.wordpress.org/plugins/really-simple-ssl/

#### WooCommerce
E-commerce software for Wordpress
https://woocommerce.com/

#### Kirki
Theme Options-helper for customizer
https://kirki.org/

#### ManageWP Worker
Communication worker with ManageWP
https://wordpress.org/plugins/worker/
