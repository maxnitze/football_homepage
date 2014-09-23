source 'https://rubygems.org'

ruby '2.0.0'
#ruby-gemset=vfb_oxstedt_rails_4_1

# ruby web application framework
gem 'rails' #, github: 'rails'

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

# Haml templating engine
gem 'haml' #, github: 'haml'
gem 'haml-rails' #, github: 'indirect/haml-rails'

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
gem 'omniauth' #, github: 'intridea/omniauth'
gem 'omniauth-twitter' #, github: 'arunagw/omniauth-twitter'
gem 'omniauth-facebook' #, github: 'mkdynamic/omniauth-facebook'
gem 'omniauth-google-oauth2' #, github: 'zquestz/omniauth-google-oauth2'
gem 'cancan' #, github: 'ryanb/cancan'
gem 'role_model' #, github: 'martinrehfeld/role_model'

# What-You-See-Is-What-You-Get Editor
gem 'simple_form' #, github: 'plataformatec/simple_form'
gem 'bootsy' #, github: 'volmer/bootsy'

# Pagination
gem 'kaminari' #, github: 'amatsuda/kaminari'
gem 'bootstrap-kaminari-views' #, github: 'matenia/bootstrap-kaminari-views'

group :development, :test do
  # Puma Web Server
  gem 'puma' #, github: 'puma'
  # SQLite3 Database
  gem 'sqlite3' #, github: 'qoobaa/sqlite3'
  # Test-Framework RSpec
  gem 'rspec-rails' #, github: 'rspec/rspec-rails'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring' #, github: 'rails/spring'

  # nicer scaffolding templates
  gem 'nifty-generators' #, github: 'ryanb/nifty-generators'

  # more powerfull error page
  gem 'better_errors' #, github: 'charliesome/better_errors'
  # shows a interactive terminal at error page
  gem 'binding_of_caller' #, github: 'banister/binding_of_caller'
  # no asset logs to server-terminal
  gem 'quiet_assets' #, github: 'evrone/quiet_assets'
  # annotate data classes with its attribute names and types
  gem 'annotate' #, github: 'ctran/annotate_models'

  # catch mails send by the app at http://localhost:1080/
  gem 'mailcatcher' #, github: 'sj26/mailcatcher'
end

group :test do
  # ruby bindings for WebDriver
  gem 'selenium-webdriver'
  # real user inteaction for tests
  gem 'capybara' #, github: 'jnicklas/capybara'
  # cleaning-strategies for databases in ruby
  gem 'database_cleaner' #, github: 'bmabey/database_cleaner'
  # open brower on failing tests
  gem 'launchy' #, github: 'copiousfreetime/launchy'
end

group :doc do
  # generate searchable HTML dosumentationfor ruby code
  gem 'sdoc', require: false #, github: 'voloko/sdoc'
end

group :production do
end