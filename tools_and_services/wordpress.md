## WordPress

WordPress is a whole separate ecosystem from the rest of the tech we are using.
Therefore here's a guideline specifically for that.

### Tools

- 🟢 [GitHub](https://github.com) - Versioning of development

#### Hosting
- 🟢 [Pressable](https://my.pressable.com) - Hosting of staging and livesites. We should use Pressable for all new Wordpress clients

- 🟡 [Kinsta](https://kinsta.com) - Hosting of staging and livesites. We use Kinsta for old projects, and should try to move them to Pressable, when we actively develop for them.

### Plugins
In this section we publish preferred plugins, and plugins we are phasing out.

#### Components
Recommended way of building new wordpress projects is by using Gutenberg, and creating Abtion's plugin for components.

- 🟢 [Gutenberg Block Editor](https://developer.wordpress.org/block-editor) - Experience the flexibility that blocks allow

- 🟡 [Advanced Custom Fields Pro](https://www.advancedcustomfields.com/pro) - Handles integration with custom fields in Wordpress. We have purchased license for unlimited sites and are using this plugin on many of our older wp projects.

#### Forms
- 🟢 [WS Form PRO](https://wsform.com) - 
Smart. Fast. Forms. Clients can pay a license themselves, or we can purchase agency license and use it on unlimited sites.

- 🟢 [Gravity Forms](https://www.gravityforms.com) -
We already have an agency license, that we are using on several clients.

#### Folders
- 🟢 [Real Media Library](https://wordpress.org/plugins/real-media-library-lite/)
Free, but it has some extension plugins for a one time cost. For instance [physical folders](https://devowl.io/wordpress-real-physical-media/).

- 🟡 [Media Library Folders](https://wordpress.org/plugins/media-library-plus/)
Free. Not as nice looking as Real Media Library. Files are physically placed in chosen folders instead of the normal `uploads/year//month/`. However, it has an annoying and confusin "reset" plugin.

#### Translations
For all new clients who need translations we will be using MultilingualPress. This plugin requires multisite installation. 

- 🟢 [MultilingualPress](https://multilingualpress.org) -
Turn WordPress Multisite into a multilingual network with built-in automatic translation. Simple, secure, and scalable multilingual WordPress.

- 🟡 [Polylang](https://polylang.pro) - 
Advanced translation/ multilanguage. This is used on older projects and should be replaced by MultilingualPress. Licenses should be bought by the client. 

- 🔴 [WPML](https://wpml.org) (phased out) -
Translation/multilangua sites. We still have it on some of our older projects. Should try to move them to [MultilingualPress](https://multilingualpress.org).

#### SEO
- 🟢 [Yoast SEO/ Yoast SEO Premium](https://yoast.com/wordpress/plugins/seo) - All-in-one SEO solution for WordPress, including on-page content analysis, XML sitemaps. Free and paid version.

#### Tracking and analytics
- 🟢 [Matomo Analytics](https://matomo.org) - 
Privacy friendly, GDPR compliant and self-hosted. Matomo is the #1 Google Analytics alternative that gives you control of your data. Free and secure. Can be used both on Pressable and Kinsta

- 🔴 Connect Matomo
This plugin requires custom setup to collect data on Pressable. It is allowed on Kinsta out of the box. When migrating a client - we must ensure we get the history and setup the plugin properly on Pressable.

#### Other
- 🟢 [WooCommerce](https://woocommerce.com) -
E-commerce software for Wordpress

- 🟢 [WP All Import Pro](https://www.wpallimport.com)
Solution for importing XML and CSV files to WordPress. Import to Posts, Pages, and Custom Post Types. Can be installed on unlimited number of sites. Currently we have clients buying individual licenses.

- 🟡 [ManageWP Worker](https://wordpress.org/plugins/worker) - Overview, backup and updating of existing websites. We have been using this system for managing wordpress sites, but now we are moving away from it, and updating sites manually first on Staging and then on Production.
