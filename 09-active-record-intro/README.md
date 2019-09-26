# ORMs and Active Record:

## Review
- ORM (Object Relational Mapping): **accessing a relational database using an object-oriented programming language**.
- ORMs help us "map" database tables to classes and instances of classes to rows in those tables.

---

## Rake & File/Folder Structure
### Rake
- The Rakefile defines tasks to be run from the command line
- To view all tasks run `rake -T`
- Tasks allow us to encapsulate ruby code that we want to execute **from the command line**
- We're getting some tasks from the `sinatra/activerecord/rake` library which gives us easy to use ActiveRecord tasks (we can see this included in our gemfile)
***
### File/Folder Structure
- `Gemfile` describes the gem dependencies for our program
- `app` folder holds our models (our Ruby classes)
- `db` directory holds migrations and `seeds.rb` file
- `config` holds environment file
  - `require 'bundler/setup'` and `Bundler.require` **load all of the gems in our Gemfile**
  - `ActiveRecord::Base.establish_connection` **sets up our database** (with options hash)
  - `require_all` **loads all of our application code**

---

## Migrations and Database Structure
- To get our database set up, we need to use the `rake db:create_migration NAME=create_boxers`
- Singular (model class) vs Plural (table)
- `create_table` method takes a block, the block takes a table builder
- Run migrations with `rake db:migrate`
- Our `schema.rb` is the **authoritative representation of the database structure**
- Let's blow up the database (DO NOT DO IN REAL LIFE!!)
- Another way: gracefully fixing the db
  1. Create a new migration
  2. Roll that migration back (`rake db:rollback`
  3. Delete the migration files you don't want to keep

---

## Connecting Models to ActiveRecord
- Our models (Ruby classes) appear in `app/models`
  ```ruby
  class Trainer < ActiveRecord::Base
  end
  ```
- Since our Ruby classes inherit from ActiveRecord, we have access to AR methods!

---

## Important Methods from ActiveRecord
- Model.new
  - Creates a new **RUBY** instance in local memory without persisting to the database
- Model.save
  - Inserts or updates a **RUBY** instance to the db
- Model.create
  - Model.new + Model.save
  - A class method that creates a new **RUBY** instance AND saves it to the database
- Model.all
  - Returns all instances (we wrote this by hand a million times)
- Model.first
  - Instance with the lowest ID in the db
- Model.find
  - Finds a record by id and returns a Ruby instance––`Boxer.find(1)` returns the boxer with an id of 1
- Model.find_by(attribute: value)
  - Can find by one attribute-value pair or multiple
  - `Boxer.find_by(name: 'Mike Tyson')` will return the boxer with a name of 'Mike Tyson'

[Active Record Docs](http://edgeguides.rubyonrails.org/active_record_migrations.html#using-the-up-down-methods)
