require 'sqlite3'
require 'pry'


db = SQLite3::Database.new('chinook.db')
sql_select
puts db.execute("SELECT * FROM artists;");
