require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite"
) # Setting up our database (with Active Record)

require_all 'app' # Loads all of our application code
