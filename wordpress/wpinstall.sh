#!/bin/bash

# Input database name
echo "---"
echo "wpinstall.sh - A WordPress installation shell script"
echo "by Abtion"
echo "---"
echo "- Requires WP-CLI, make sure you install that first (http://wp-cli.org/)"
echo "- Check file for configurations"
echo "- Downloads, configures, installs WordPress, default theme and plugins"
echo "---"

# Configure defaults
ROOT_NAME="root" 
DBUSER="root"
DBPASS="root"
EMAIL="admin@abtion.com"
WP_USER="root"
WP_PASS="root"
SITE_TITLE="Site"
SITE_URL_PREFIX="https://newsite.test"

function help() {
  echo "Usage: wpinstall.sh databasename"
  echo ""
}

if [ $DBUSER  ]
then
  echo "Starting WordPress installation..."
  echo ""
  echo "Using database name: '$1'"
  echo ""
  echo "- Downloading..."
  echo "-----------------------------------------"
  wp core download --locale=en_GB
  echo ""
  echo "- Configuring..."
  echo "-----------------------------------------"
  wp core config --dbname=$1 --dbuser=$DBUSER --dbpass=$DBPASS
  echo ""
  echo "- Creating database..."
  echo "-----------------------------------------"
  wp db create
  echo ""
  echo "- Installing WordPress website..."
  echo "-----------------------------------------"
  wp core install --url=$SITE_URL_PREFIX/$1 --title=$SITE_TITLE --admin_email=$EMAIL --admin_name=$WP_USER --admin_password=$WP_PASS
  echo ""
  echo "- Installing plugin (1/2) Advanced Custom Fields PRO..."
  echo "-----------------------------------------"
  wp plugin install 'https://connect.advancedcustomfields.com/index.php?a=download&p=pro&k=b3JkZXJfaWQ9NzY4MTZ8dHlwZT1kZXZlbG9wZXJ8ZGF0ZT0yMDE2LTAzLTA4IDA2OjU0OjI3'
  echo "Inserting license key for Advanced Custom Fields PRO"
  wp eval 'acf_pro_update_license("b3JkZXJfaWQ9NzY4MTZ8dHlwZT1kZXZlbG9wZXJ8ZGF0ZT0yMDE2LTAzLTA4IDA2OjU0OjI3");'
  echo "- Installing plugin (2/2) WordPress SEO..."
  echo "-----------------------------------------"
  wp plugin install wordpress-seo --activate
  echo ""
  echo "- Cloning Abtion-quick-start theme into themes folder..."
  echo "-----------------------------------------"
  cd $(wp theme path)
  wp scaffold _s sample-theme --theme_name="abtion-quick-start-theme" --author="ABTION"
  echo ""
  echo "- Looking into abtion-quick-start-theme"
  echo "-----------------------------------------"
  cd abtion-quick-start-theme
  echo ""
  echo "- Clean up .git folder"
  echo "-----------------------------------------"
  rm -rf .git/
  mv .gitignore ../../..
  mv .gitmodules ../../..
  echo ""
  echo "- Building theme with Grunt and Bower..."
  echo "-----------------------------------------"
  echo "Install node modules..."
  npm install --quiet
  echo ""
  echo "- Activating theme..."
  echo "-----------------------------------------"
  wp theme activate abtion-quick-start-theme
  echo ""
  echo "- Initializing repository..."
  echo "-----------------------------------------"
  git init
  echo ""
  echo ""
  echo ""
  echo ">>>>>>>>>>>>>>>>>>>>>>> Done! You can start your development now 👏😎"
  exit 1
else
  help;
fi
