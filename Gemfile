source 'https://rubygems.org'
ruby '2.6.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.3.6"
gem 'certified'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'bootstrap4-kaminari-views'
gem 'kaminari'
gem 'social-share-button', '~> 1.2', '>= 1.2.1'
gem 'webpacker'
gem 'react-rails'
gem 'graphql', '~> 1.11', '>= 1.11.1'
gem 'data_migrate', '~> 6.3'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'
gem 'activestorage-imgur'
gem 'active_storage_validations'

gem 'image-picker-rails', '~> 0.2.4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'factory_bot_rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'pry-rails'
gem "json"
gem "fuzzy-string-match"
gem 'rubysl-securerandom'
gem 'bootstrap'
gem 'jquery-rails'
gem 'pry-byebug'

# Markdown rendering
gem 'redcarpet'
gem 'rails-erd'
gem 'rest-client'
gem 'mini_racer'
gem 'date_validator'
gem 'font-awesome-rails'
gem "validate_url"
gem 'sidekiq'
gem 'faker'
gem 'omniauth-microsoft_graph'

group :development, :test do
  gem 'rspec-rails'
end

gem 'graphiql-rails', '1.7.0', group: :development
