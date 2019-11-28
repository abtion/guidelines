# Abtion stack
###### Or Ab-*stack*-tion!  🤦‍♂️
![abtion image](https://media.giphy.com/media/ZVik7pBtu9dNS/giphy.gif)


In Abtion we strive for the most efficient and easiest workflow.
This docs is thought of being a docs we all can turn to if we get in doubt of how we deal with managing certain stuff, such as CI/CD.
Also, to make it easier to on-board new employees.


## Frontend
As Abtioneers we love React when working on the FE (Front-End), but we also care about Vue and are always curious of what exciting technologies might pop-up in the future. But for now most of our FE apps are built with React.

#### Testing
React and [Jest](https://jestjs.io/) make a great match, which is why we always test our React apps with Jest.

#### CI
So far we are using both [Travis](https://travis-ci.org/) and [Buddy](https://buddy.works/) - not at the same time of course  💩. 

With Buddy we can quickly create a pipeline and connect it to GitHub thanks to the easy to use UI - but it’s pretty much up to personal preference.

#### CD
We aim to host all of out FE apps on [Netlify](https://www.netlify.com/) - currently (July 2019) - most of our apps, backend and frontend apps are hosted on [Heroku](https://heroku.com/). But we find that Netlify provides a better development experience as well as an improved overall usability the user, due to Netlify’s great services such as [CDN Edge](https://www.netlify.com/products/edge/), [Analytics](https://www.netlify.com/products/analytics/) , [Dev](https://www.netlify.com/products/dev/) and more.

During an active pull-request the CI will run dependencies, tests and whatnot. Along-side that Netlify will trigger and run a preview build. Netlify provides a deployment preview link, so that we can easily see new changes.

#### Monitoring
Maybe Sentry?

## Backend
Backend apps are built with Ruby on Rails and are hosted on [Heroku](https://heroku.com). Backend and/or Rails with React apps use a default [README.md](https://github.com/abtion/guidelines/blob/master/standard_readme.md#name-of-the-third-party) that makes it easy to document the app during development.

#### Database
PostgreSQL

#### CI
Travis - how do we work with travis?

#### CD
Heroku provides review-apps. A review-app is a deployed app based on a active pull-request,
when a review-app has been successfully deployed, it provides a deployment link so we can see new changes - just like Netlify does as described in the Frontend->CD section

#### Preferred Heroku Add-ons
— [Rollbar](https://rollbar.com)

— Postgres

## WordPress
At Abtion we have our own WP(wordpress) theme called [Abtion-theme](https://github.com/abtion/abtion-theme) on GitHub, creative. All WP sites are hosted on [Kinsta](https://kinsta.com/)

The theme uses Webpack 4 to compile SCSS and JS.

#### CI/CD
Currently we are not testing wordpress sites, but it is our goal to do that, when we find a good way to do it.

We are building our WordPress apps with our Buddy pipelines, like this [example](https://app.buddy.works/abtion/abtion-theme/pipelines) pipeline. 
Upon a successful run of our pipeline we deploy the changed files directly to the hosted site on Kinsta.

#### CLI
We have created our own shell script based on the [wp-cli](https://wp-cli.org/) to quickly create a wordpress site, install our default plugins and our Abtion-theme. The script can be seen in this [repo](https://github.com/abtion/Wordpress-Scaffolding)

#### Plugins
— [ACF](https://www.advancedcustomfields.com/)

— [Swift](https://swiftperformance.io/)