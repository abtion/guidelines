require 'pry'

# Run this wil rails new my_app -m muffi-template/rails-template.rb
#We're redefining #source_path so we can add the template dir and copy files from it
#to the application
def source_paths
  Array(super) +
    [File.join(File.expand_path(File.dirname(__FILE__)),'muffi_template')]
end

gem_group :development, :test do
  gem "rspec-rails"
  gem 'pry-rails'
  gem 'dotenv-rails'
end

gem_group :test do
  gem "factory_bot_rails", "~> 4.0"
end

gem_group :production do
  gem 'rails_12factor'
end

gem "rubocop", require: false

after_bundle do
  parameterize_app_name = app_name.parameterize.gsub("_","-")
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
  puts "Here is a few things we've done for you:"
  puts "We've installed the most common used gems at Abtion. You probably need all of them."
  puts "Rspec is ready to run. You can even use Factories."
  puts "We've created a git repo and pushed it to Github. You shoud be able to find it at: github.com/abtion/#{app_name}"
  puts "We've created a Staging app in Heroku. You shoud be able to find it at: https://#{parameterize_app_name}-staging.herokuapp.com/"
  puts "Next time you make a commit, your test suit will run on TravisCI."
  puts ""
  puts ""
  puts ""
end
