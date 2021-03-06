# Generated by rspec-sinatra. (2015-08-15 10:45:13 +0100)

# ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app/chitter.rb')
require 'timecop'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'factory_girl'
require 'database_cleaner'
require './spec/helpers/test_helpers'
require_relative './factories/user'

Capybara.app = Armadillo::Chitter
RSpec.configure do |config|
  config.include Capybara::DSL
  config.include FactoryGirl::Syntax::Methods
  config.include TestHelpers

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end
