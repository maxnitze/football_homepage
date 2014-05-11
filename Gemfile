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

# just change the parts of the page that need to be changed
gem 'turbolinks' #, github: 'rails/turbolinks'

# SQL AST manager for ruby
gem 'arel' #, github: 'rails/arel'

group :development, :test do
  # Puma Web Server
  gem 'puma' #, github: 'puma'
  # SQLite3 Database
  gem 'sqlite3' #, github: 'qoobaa/sqlite3'
  # Test-Framework RSpec
  gem 'rspec-rails' #, github: 'rspec/rspec-rails'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring' #, github: 'rails/spring'

  # more powerfull error page
  gem 'better_errors' #, github: 'charliesome/better_errors'
  # shows a interactive terminal at error page
  gem 'binding_of_caller' #, github: 'banister/binding_of_caller'
  # no asset logs to server-terminal
  gem 'quiet_assets' #, github: 'evrone/quiet_assets'
  # annotate data classes with its attribute names and types
  gem 'annotate' #, github: 'ctran/annotate_models'
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