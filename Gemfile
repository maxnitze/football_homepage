source 'https://rubygems.org'

ruby '2.3.1'
#ruby-gemset=vfb_oxstedt

# ruby web application framework
gem 'rails', '~> 4.2.0 ' #, github: 'rails'

# internationalization
gem 'rails-i18n' #, github: 'svenfuchs/rails-i18n'

# puma web server
gem 'puma' #, github: 'puma'

# Sass stylesheet integration
gem 'sass-rails' #, github: 'rails/sass-rails'
# JavaScript compressor
gem 'uglifier' #, github: 'lautis/uglifier'
# CoffeeScript adapter
gem 'coffee-rails' #, github: 'rails/coffee-rails'
# jquery for rails
gem 'jquery-rails' #, github: 'rails/jquery-rails'
# JSon DSL
gem 'jbuilder' #, github: 'rails/jbuilder'
# font-awesome web font (and icons)
gem 'font-awesome-rails' #, github: 'bokmann/font-awesome-rails'

# Haml templating engine
gem 'haml' #, github: 'haml'
gem 'haml-rails' #, github: 'indirect/haml-rails'
gem 'html2haml' #, github: 'haml/html2haml'

# Twitter Bootstrap with Sass-Stylesheets
gem 'bootstrap-sass'
# add browser vendor prefixes automatically
gem 'autoprefixer-rails'

# just change the parts of the page that need to be changed
gem 'turbolinks' #, github: 'rails/turbolinks'

# SQL AST manager for ruby
gem 'arel' #, github: 'rails/arel'

# Authentication
gem 'devise' #, github: 'plataformatec/devise'
gem 'devise-i18n' #, github: 'tigrish/devise-i18n'
gem 'omniauth' #, github: 'intridea/omniauth'
gem 'omniauth-twitter' #, github: 'arunagw/omniauth-twitter'
gem 'omniauth-facebook' #, github: 'mkdynamic/omniauth-facebook'
gem 'omniauth-google-oauth2' #, github: 'zquestz/omniauth-google-oauth2'

# What-You-See-Is-What-You-Get Editor
gem 'simple_form' #, github: 'plataformatec/simple_form'
gem 'bootsy', github: 'volmer/bootsy'

# Pagination
gem 'kaminari' #, github: 'amatsuda/kaminari'
gem 'bootstrap-kaminari-views' #, github: 'matenia/bootstrap-kaminari-views'

# File-Uploads and attachments
gem "paperclip" #, github: 'thoughtbot/paperclip'

# HTML, XML, SAX, and Reader parser
gem "nokogiri" #, github: 'sparklemotion/nokogiri'

# Tagging arbitrary objects
gem 'acts-as-taggable-on' #, github: 'mbleigh/acts-as-taggable-on'

# structure rails seed data
gem 'seedbank' #, github: 'james2m/seedbank'

# datetimepicker for bootstrap3
gem 'momentjs-rails' #,github: 'derekprior/momentjs-rails'
gem 'bootstrap3-datetimepicker-rails'
  #, github: 'TrevorS/bootstrap3-datetimepicker-rails'

group :development do
  # nicer scaffolding templates
  gem 'nifty-generators' #, github: 'ryanb/nifty-generators'

  # more powerfull error page
  gem 'better_errors' #, github: 'charliesome/better_errors'
  # shows a interactive terminal at error pages
  gem 'binding_of_caller' #, github: 'banister/binding_of_caller'
  # no asset logs to server-terminal
  gem 'quiet_assets' #, github: 'evrone/quiet_assets'
  # annotate data classes with their attribute names and types
  gem 'annotate' #, github: 'ctran/annotate_models'

  # catch mails send by the app at http://localhost:1080/
  gem 'mailcatcher' #, github: 'sj26/mailcatcher'
end

group :test do
  # ruby make
  gem 'rake' #, github: 'ruby/rake'
  # Test-Framework RSpec
  gem 'rspec-rails', require: false #, github: 'rspec/rspec-rails'
  # cucumber for rails 3.x, 4.x, and 5.x
  gem 'cucumber-rails', require: false #, github: 'cucumber/cucumber-rails'

  # ruby bindings for WebDriver
  gem 'selenium-webdriver'
  # real user interaction for tests
  gem 'capybara' #, github: 'jnicklas/capybara'
  # cleaning-strategies for databases in ruby
  gem 'database_cleaner' #, github: 'bmabey/database_cleaner'
  # open brower on failing tests
  gem 'launchy' #, github: 'copiousfreetime/launchy'
  # fixtures replacement
  gem 'factory_girl_rails' #, github: 'thoughtbot/factory_girl_rails'
  # fake data generator
  gem 'faker' #, github: 'stympy/faker'

  # coveralls gemfile
  gem 'coveralls', require: false #, github: 'lemurheavy/coveralls-ruby'
end

group :production do
  # postgresql
  gem 'pg' #, github: 'ged/ruby-pg'
  # enabling features such as static asset serving and logging on Heroku
  gem 'rails_12factor' #, github: 'heroku/rails_12factor'
end

group :doc do
  # generate searchable HTML documentation for ruby code
  gem 'sdoc', require: false #, github: 'voloko/sdoc'
end

group :development, :test do
  # SQLite3 Database
  gem 'sqlite3' #, github: 'qoobaa/sqlite3'
  # Spring speeds up development by keeping your application running in the
  #   background. Read more: https://github.com/rails/spring
  gem 'spring' #, github: 'rails/spring'
  # load variables from '.env' files to 'ENV'
  gem 'dotenv-rails' #, github: 'bkeepers/dotenv'
end
