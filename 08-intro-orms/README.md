# Intro to ORMs (Object Relational Mappers)

## Database and SQL Review with Books and Authors (10 min)

*What does the design philosophy of* Domain Modeling *look like in a relational database?*

**1. Create a *books* table and an *authors* table. Books should have a *title* and authors should have a *name*.**

id | title | author_id
-- | -- | -- 
1 | Harry Potter | 2
2 | Neuromancer  | 1
3 | Benjamin Franklin's (Auto)biography | 3

id | name
-- | --
1 | William Gibson
2 | J.K. Rowling
3 | Benny Frank Richard

**2. Write the SQL to find all books written by William Gibson given the author's id.**
```SQL
SELECT title FROM books WHERE author_id = 1;
```

**3. Create a *books* table and an *authors* table where each author can have one or multiple books. Each book can haveo one or multiple authors. Books should have a *title* and authors should have a *name*.**

books table
id | title | author_id
-- | -- | -- 
1 | Harry Potter | 2
2 | Neuromancer  | 1
3 | Benjamin Franklin's (Auto)biography | 3

author table
id | name
-- | --
1 | William Gibson
2 | J.K. Rowling
3 | Benny Frank Richard
4 | William Faulkner
5 | Shakespeare

author_books join table
id | author_id | book_id
-- | -- | --
1 | 1 | 2
2 | 5 | 2


## CRUD Revisited (5 min)
*What are the four ways we can interact with data? What might this interaction look like in SQL? In Ruby?*

Create
- `CREATE TABLE books (id INTEGER PRIMARY KEY, title TEXT);`
- `INSERT INTO books (title) VALUES 'Snowcrash'`
- `snowcrash_book = Book.new("Snowcrash")`
Read
- `SELECT title FROM books WHERE author_id = 1;`
- `snowcrash_book.title`
Update
- `UPDATE books SET title = 'New and Selected Poems' WHERE book_id = 3`
- `book.title = 'New and Selected Poems'`
Delete
- `DELETE FROM books WHERE book_id = 7`
- `book.delete`

## The Active Record Pattern
- The Active Record Pattern is an approach to accessing data in a database using object-oriented programming.
- A **database** corresponds to a **domain**.
- Each **table** in the database corresponds to a Ruby **class** (model).
- Each **row** in a table corresponds to an **instance** of that model.
- Each **column** in our table corresponds to an **attribute** of that model.

## DO THE THING (45 min)

### Why? (5 min)
*Problem*: Data is *not persistent*. Ruby stores data in memory. 
*Solution*: Relational database saved, accessed, and altered in `.db` file.

### Examine structure and tooling (15 min)
- `run.rb` file in `./bin`
- Outsourced reqs in `./config/environment.rb`
    - *What is namespacing of SQLite3?*
    - SQLite3 module with Database class
- Store database file in `./db/database_name.db`
- `./lib` contains classes
- Gemfile(.lock) helps manage dependencies
    - Bundler is a gem which manages other gems
    - `bundle init` creates a Gemfile
    - `bundle install` installs gems
    - Gemfile lists required gems and source
    - Gemfile.lock records installed gems *and* dependencies
- Rakefile
    - Rake is a task runner!
    - `rake -T` shows tasks
    - `rake task_name` runs task
    - `rake console` better than `irb` because it contains program information

### Wrap SQL in Ruby (25 min)
- Guidelines
    - Execute SQL command in method
    - Return Object instead of Enumerable
- Create methods
    - `@id` attribute
    - `#save` a tweet
- Helper methods
    - `#in_db?`
    - `set_instance_id`
- Read methods
    - Get `.all` tweets!
    - Return class instances instead of hashes from database
    - `.find_by_id`
- Update method
    - `#update` with object attribute
    - ActiveRecord gem will help with `#save` management
- Delete
    - `.delete_all` from array, db
    - `#delete` 
- ***WARNING*** SQL Injection!
    - [Little Bobby Tables](https://xkcd.com/327/)
    - Parameterize SQL calls to defend!

### For your edification...
- [x] **A tweet belongs to a user and has some message content - must have user_id**
- [x] **The belongs_to must have a user_id on it**
- [x] **A user has a username, and has many tweets**
- [ ] **A tweet can have many tags and a tag can have many tweets**

Still hungry? [Watch Avi Flombaum build a Metaprogrammed Abstract ORM.](https://www.youtube.com/watch?time_continue=2&v=hts7TjpPw-8)