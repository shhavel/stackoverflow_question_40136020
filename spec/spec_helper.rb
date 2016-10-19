require 'bundler/setup'
Bundler.require

Dir['./spec/support/**/*.rb'].each { |f| require f }

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
CreateUsers.new.change
CreatePosts.new.change
CreateVideos.new.change
CreateComments.new.change


RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.clean_with :truncation
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
