# Guidelines for WordPress sites

To scaffold a new WordPress site, start [here](https://github.com/abtion/Wordpress-Scaffolding). Make sure that you follow the guidelines below.


### Table of contents
1. [Plugins](#plugins)
2. [File structure](#file-structure)
3. [Task runners](#task-runners)
4. [Using WordPress as a API](#using-wordpress-as-a-api)





### Plugins
1. [ACF PRO](https://www.advancedcustomfields.com) (Mandatory)
2. [WPMU DEV](https://premium.wpmudev.org/) (Optional)
3. [All-in-one migration tool](https://da.wordpress.org/plugins/all-in-one-wp-migration) (Optional)
4. [YOAST SEO](https://da.wordpress.org/plugins/wordpress-seo/) (Optional)

Plugins should always be kept to a minimum, although ACF PRO is considered a mandatory for all projects, as it brings a lot of customization to the backend and UI - and in a lot of cases, a custom theme can be created entirely with only this plugin.

WPMU DEV contains a lot of premium plugins for various use cases. When in a situation where you consider the problem unsolvable without the use of a plugin, look here first.

All-in-one migration tool can be used to migrate sites between domains, if you don't want the hassle of doing it manually.

Yoast SEO is the market leader of SEO plugins for WordPress and has been around for a long time. Yoast should be installed depending on the project.





### File structure
- [assets](#assets)
- [components](#components)
- [inc](#inc)


#### assets
This folder container the following:
- scss
- js
- images
- svg
- fonts

#### components
Define your template components here and include them with build-in get [get_template_part](https://developer.wordpress.org/reference/functions/get_template_part/) function.
Depending on the size of the project, you may want to use a folder structure as shown below.

- /header/component-navbar.php
- /header/component-search.php

#### inc
Define your theme functions here and include them into the main `functions.php`. An example use case could be to include your custom post types from within a separate file like so:

- include( get_template_directory() . '/inc/post_types.php' );





### Task runners
1. [CodeKit](https://codekitapp.com/) / [Gulp](https://gulpjs.com/)

Watching and compiling scss, js - use your prefered settings.
`gulp.js` pre-defined setup coming soon...





### Using WordPress as an API
The WP REST API was built into the core in 4.7 and along with that a great [handbook](https://developer.wordpress.org/rest-api/).

#### Authentication
Using a WordPress site as a headless CMS will often times need you to implement some sort of [authentication](https://developer.wordpress.org/rest-api/using-the-rest-api/authentication/). The WP REST API supports various auth methods, including:
- [Basic Auth](https://github.com/WP-API/Basic-Auth)
- [JWT](https://da.wordpress.org/plugins/jwt-authentication-for-wp-rest-api/)
