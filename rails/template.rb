require 'pry'

# Run this with: rails new my_app -m https://raw.githubusercontent.com/abtion/guidelines/master/rails/template.rb

# Add this template directory to source_paths so that actions like
# copy_file and template resolve against our source files. If this file was
# invoked remotely via HTTP, that means the files are not present locally.
# In that case, use `git clone` to download them to a local temporary dir.
def add_template_repository_to_source_path
  if __FILE__ =~ %r{\Ahttps?://}
    require "tmpdir"
    tempdir = Dir.mktmpdir("template-tmp")
    source_paths.unshift(tempdir + "/rails/muffi_template")
    at_exit {FileUtils.remove_entry(tempdir)}
    git clone: [
      "--quiet",
      "https://github.com/abtion/guidelines.git",
      tempdir
    ].map(&:shellescape).join(" ")
  else
    source_paths.unshift(File.dirname(__FILE__))
  end
end

add_template_repository_to_source_path

# replace sqlite with postgress
gsub_file 'Gemfile', /gem 'sqlite3'\n/, "gem 'pg'"
gsub_file 'Gemfile', '# Use sqlite3 as the database for Active Record', ''

# overwrite default sqlite3 database configs with postgresql defaults
copy_file "config/database.yml", force: true
gsub_file "config/database.yml", /myapp/, "#{app_name}"
gsub_file "config/database.yml", /MYAPP/, "#{app_name}.upcase"

gem_group :development, :test do
  gem "rspec-rails"
  gem 'pry-rails'
  gem 'dotenv-rails'
end

gem_group :test do
  gem "factory_bot_rails", "~> 4.0"
end

gem "rubocop", require: false

after_bundle do
  parameterize_app_name = app_name.parameterize.gsub("_", "-")
  # Setup Rspec
  run "rm -rf test"
  directory 'spec', "spec"
  copy_file '.travis.yml'

  git :init
  git add: "."
  git commit: %Q{ -m "Initial commit #{app_name}" }
  run "hub create abtion/#{app_name} -p"
  run "git push -u origin master"

  run "heroku create #{parameterize_app_name}-staging --region eu --team abtion --remote staging"
  run "heroku pipelines:create #{parameterize_app_name} -a #{parameterize_app_name}-staging --stage staging --team abtion"
  run "git push staging master"

  puts ""
  puts ""
  puts ""
  puts "      db      \`7MM\"\"\"Yp, MMP\"\"MM\"\"YMM `7MMF' .g8\"\"8q. \`7MN.   \`7MF\'"
  puts "     ;MM:       MM    Yb P'   MM   `7   MM .dP'    `YM. MMN.    M  "
  puts "    ,V^MM.      MM    dP      MM        MM dM'      `MM M YMb   M  "
  puts "   ,M  `MM      MM\"\"\"bg.      MM        MM MM        MM M  `MN. M  "
  puts "   AbmmmqMA     MM    `Y      MM        MM MM.      ,MP M   `MM.M  "
  puts "  A'     VML    MM    ,9      MM        MM `Mb.    ,dP' M     YMM  "
  puts ".AMA.   .AMMA..JMMmmmd9     .JMML.    .JMML. `\"bmmd\"\' .JML.    YM  "
  puts ""
  puts ""
  puts ""
  puts "Here are a few things we've done for you:"
  puts "We've installed the most commonly used gems at Abtion. You'll probably need all of them."
  puts "Rspec is ready to run. You can even use Factories."
  puts "We've created a git repo and pushed it to Github. You shoud be able to find it at: github.com/abtion/#{app_name}"
  puts "We've created a Staging app in Heroku. You shoud be able to find it at: https://#{parameterize_app_name}-staging.herokuapp.com/"
  puts "Next time you make a commit, your test suit will run on TravisCI."
  puts ""
  puts ""
  puts ""
end
