# Abtion stack
###### Or Ab-*stack*-tion!  🤦‍♂️
![abtion image](https://media.giphy.com/media/ZVik7pBtu9dNS/giphy.gif)


In Abtion we strive for the easiest and most efficient workflow.
This document is thought of being a resource we all can turn to if we get in doubt of how we deal with managing certain stuff, such as CI/CD.
Also, to make it easier to on-board new employees.


## Frontend
As Abtioneers we love React when working on the FE (Front-End), but we also care about Vue and are always curious about what exciting technologies might pop-up in the future. But for now most of our FE apps are built with React.

#### Testing
React and [Jest](https://jestjs.io/) make a great match, which is why we always test our React apps with Jest.

#### CI
So far we are using both [Travis](https://travis-ci.org/) and [Buddy](https://buddy.works/) - not at the same time of course  💩. 

With Buddy we can quickly create a pipeline and connect it to GitHub thanks to the easy to use UI - but it’s pretty much up to personal preference.

#### CD
We aim to host all of out FE apps on [Netlify](https://www.netlify.com/) - currently (July 2019) - most of our apps, backend and frontend apps are hosted on [Heroku](https://heroku.com/). But we find that Netlify provides a better development experience as well as an overall improved usability to the user, due to Netlify’s great services such as [CDN Edge](https://www.netlify.com/products/edge/), [Analytics](https://www.netlify.com/products/analytics/) , [Dev](https://www.netlify.com/products/dev/) and more.

During an active pull-request the CI will run dependencies, tests and whatnot. Along-side that Netlify will trigger and run a preview build. Netlify provides a deployment preview link, so that we can easily see new changes.

#### Monitoring
Maybe Sentry?

## Backend
Backend apps are built with Ruby on Rails and are hosted on [Heroku](https://heroku.com). Backend and/or Rails with React apps use a default [README.md](https://github.com/abtion/muffi/blob/main/README.example.md) which makes it easy to document the app during development.

#### Database
PostgreSQL

#### CI
Travis - how do we work with travis?

#### CD
Heroku provides review-apps. A review-app is a deployed app based on an active pull-request,
when a review-app has successfully been deployed, it provides a deployment link so we can see new changes - just like Netlify does as described in the Frontend->CD section

#### Preferred Heroku Add-ons
— [Rollbar](https://rollbar.com)

— Postgres

## WordPress
At Abtion we have our own docker setup and scripts to make WordPress development fun and deployment as easy as possible.
We have documentation that will guide you through the docker setup, the official [Abtion theme](https://github.com/abtion/muffi-theme) and the services we use.
All of our WordPress sites are hosted on [Kinsta](https://kinsta.com/).

Read the documentation [here](https://github.com/abtion/guidelines/tree/main/wordpress)
