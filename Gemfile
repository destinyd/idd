source 'http://ruby.taobao.org'
ruby '2.0.0'
gem 'rails', '3.2.14'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
#gem 'jquery-rails'
gem 'jquery-rails', "< 3.0.0"
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'mongoid'
gem 'rolify'
gem 'simple_form'
#gem 'inherited_resources'
gem 'activeadmin-mongoid'
gem 'kaminari'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
gem 'mini_magick', '>= 3.4'
gem "crummy", "~> 1.7.1"
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'debugger'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :production do
  gem 'thin'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'mongoid-rspec'
end
