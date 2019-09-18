# One to Many Relationships

## Review
* *What have we learned so far?*

## Objectives
* Introduce domain modeling
  - Domain + Models = Domain Modeling
  - Relationships
* Implement one:many relationship
  - One object has many objects
  - One object belongs to another object
  - *What are some examples of one:many relationships?*
  - Survey file structure, `$LOAD_PATH`, and `require`
  - *Build deliverables*
* Pass objects as arguments
  - *What are the advantages of referencing objects instead of instance variables?*
* Demonstrate single source of truth
  - Keep info in one place whenever possible
  - *What are the advantages of having a SSoT?*
* Infer method types through naming conventions
  - Class: `.class_method`
  - Instance: `#instance_method`

## Deliverables

* Create a User class. The class should have these methods:
  - `#initialize` which takes a username
  - A reader method for the username
  - `#tweets` that returns an array of Tweet instances
  - `#post_tweet` that takes a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  - `#initialize`, setter and/or getter methods with appropriate arguments
  - `Tweet#message` that returns a string
  - `Tweet#user` that returns an instance of the user class
  - `Tweet.all` that returns all the Tweets created.
  - `Tweet#username` that returns the username of the tweet's user
