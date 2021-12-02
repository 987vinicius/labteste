source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rb-readline'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.6'
  gem "factory_bot_rails", "~> 4.0"
  gem 'awesome_print'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # Use Unicorn as the app server
  gem 'unicorn'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'chosen-rails'
gem 'jquery-ui-rails'
gem 'jquery_mask_rails'
gem 'font-awesome-rails'

gem 'nokogiri'
gem 'nokogiri-styles'

gem 'simple_form'
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap'

gem 'breadcrumbs_on_rails'
gem "paperclip", "~> 5.0.0"
gem 'rails-i18n', '~> 5.0.0'
gem 'bootstrap-multiselect_rails'

gem 'bootstrap-datepicker-rails'
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'

gem 'truncate_html'

# To gemify the summernote WYSIWYG editor for Rails >= 3.1 http://summernote.org/summernote-rails/
gem 'summernote-rails'
# https://github.com/activerecord-hackery/ransack
gem 'ransack'

# Boot large ruby/rails apps faster
gem 'bootsnap', '~> 1.1', '>= 1.1.7'

gem 'cocoon'
