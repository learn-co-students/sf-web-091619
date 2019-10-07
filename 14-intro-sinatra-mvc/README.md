# Intro to Sinatra and MVC 
## Goals
- [ ] How and why we use the MVC pattern
- [ ] How Sinatra serves data in response to RESTful routes
- [ ] How CRUD actions map to RESTful routes
- [ ] How to make an HTML form

## [Sinatra](https://www.youtube.com/watch?v=qQzdAsjWGPg)
- *What do we mean by "convention over configuration?"*
- A DSL sitting on top of Ruby and Rack
- Gives us extra functionality and abstraction. Ex:
    - `Rake`
    - `Pry`
    - `rspec`
    - `capybara`
- A lot of overlap with what we've learned already! We're still writing Ruby

## Model View Controller
- One of many common programming archetectural paradigms
- *Why separate things out?*
- The MVC "Party"
    - Model = Data
        - Represents the data and nothing else
        - Interacts with database
        - Independent of view or controller
    - View = Interface
        - Displays data through controller
        - Sends user actions to controller
        - Independent of model and controller
    - Controller = Go-Between
        - Provides model data to view
        - Interprets user actions
        - Dependent on model and view
- Chez MVC
    - Model = Food
    - Controller = Personnel
    - View = Moi et toi et l'assiette
- Why?
    - Agree on logic/pattern so others can read and use our code
        - A lot of a developer's job is dealing with other people's code
        - Minimize time spent figuring out how to talk to app
    - Separation of concerns
    - Securiy and access control
    - Simplify views, tailor user experience
- REpresentational State Transfer (REST)
    - Another convention
    - URL represents state of the data
        - `https://www.espn.com/nba/team/_/name/gs/golden-state-warriors`
        - `https://www.espn.com/nba/player/_/id/1966/lebron-james`
    - REST methods minimize URLs, maximize functionality
    - HTTP requests are stateless
- CRUD and RESTful routing
    - *How do CRUD actions map to SQL commands and HTTP requests?*
    - *How do HTTP requests map to RESTful URLs?*

Operation | SQL | HTTP
- | - | -
? | ? | ?
    
URL | HTTP Request| POST Body | Result
- | - | - | -
? | ? | ? | ?

## [Sinatra](http://sinatrarb.com/), revisited
- Create model and controller
    - *What does* `class Book < ActiveRecord::Base` *do for us?*
    - `class ApplicationController < Sinatra::Base`
- Create routes, controller methods, views
    - GET `/books/`
    - GET `/books/:id`
    - GET `/books/new`
        - Order of controller methods matters
        - *What are the attributes for an HTML form (i.e. `action`, `method`, `name`, `value`, etc)?*
            - `pry` it up!
            - Experiment with devtools.
    - POST `/books/`
        - Play with params
        - `Book.create`
    - GET `/books/:id/edit` and POST/PATCH `/books/:id`
        - *What is `erb` and what does it return?*
        - You can't patch
- Sinatra details
    - [ERB templates](https://ruby-doc.org/stdlib-1.9.3/libdoc/erb/rdoc/ERB.html)
        - `<%= %>` vs `<% %>`
        - `<%= yield %>`
    - File structure
    - Params hash
- "The entire Internet is forms." - Wise Instructor Jeff

- [`gem install corneal`](https://github.com/thebrianemory/corneal)
    - `corneal new books`
    - `corneal scaffold book`
- Review
    - *How and why do we use the MVC pattern?*
    - *How Sinatra does serve data in response to RESTful routes?*
    - *How do CRUD actions map to RESTful routes?*
    - *How do we make an HTML form?*

## Deliverables
- [ ] Create an index for your site that lists all of the existing books
- [ ] User should be able to view information about a specific book.

### Reviews
[Config Setting](http://sinatrarb.com/configuration.html)
