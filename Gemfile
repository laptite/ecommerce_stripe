source 'https://rubygems.org'

# Require a specific ruby version
ruby '2.2.1'

gem 'rails', '4.2.1'
gem 'haml-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap-sass', '3.2.0.2'

# Use postgres as the database in production
gem 'pg', group: :production

# Add 12 factor for Heroku
gem 'rails_12factor', group: :production

# Use stripe for e-commerce payments
gem 'stripe', git: 'https://github.com/stripe/stripe-ruby'

# Use to securely manage credentials
gem "figaro"

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'thin'
  gem 'byebug'

  # Use sqlite3 as the database in production
  gem 'sqlite3'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
