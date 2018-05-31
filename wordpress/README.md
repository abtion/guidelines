# Guidelines for WordPress sites


###### Table of contents
1. [Plugins](#plugins)
2. [File structure](#file-structure)
3. [Task runners](#task-runners)
4. [Using WordPress as a API](#using-wordpress-as-a-api)


### Plugins
Intro

1. [ACF PRO](https://www.advancedcustomfields.com)
2. [WPMUDEV](https://premium.wpmudev.org/) (Defender)
3. [All-in-one migration tool](https://da.wordpress.org/plugins/all-in-one-wp-migration)
4. [YOAST SEO](https://da.wordpress.org/plugins/wordpress-seo/)


### File structure
- [assets](#assets)
- [compoentns](#components)
- [functions](#functions)


#### assets
This folder container the following:
- scss
- js
- images
- svg
- fonts

#### components
Define your template components here and include them with build-in get template-part function.
Depending on the size of the project, you may want to use a folder structure as shown below.

- /navigation/part-navbar.php
- /banners/part-slider.php

#### functions
Define your theme functions here and include them into the main `functions.php`
You could define your post types in a separate php file.

### Task runners
1. [CodeKit](https://codekitapp.com/) / [Gulp](https://gulpjs.com/)

Watching and compiling scss, js - use your prefered settings.
`gulp.js` pre-defined setup is incoming.


### Using WordPress as a API

#### Thoughts

1. [JWT Authentication for WP REST API](https://da.wordpress.org/plugins/jwt-authentication-for-wp-rest-api/)