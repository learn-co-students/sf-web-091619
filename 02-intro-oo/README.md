# Intro to Object Orientation Lecture

## Objectives

* Define `object` in programming domain
    - "Ceci n'est pas une pipe" 
    - OOP: Organize code like real objects
    - Object = data + functions/methods
* Create a class and instantiate an instance of the class
    - `#new`
    - `#object_id`
* Explain the difference between a class and an instance
    - Class : Instance as Blueprint : House
    - Class : Instance as Factory : Car
* Pass arguments to `new` by defining an initialize method in class
    - Ruby MRI looks for #initialize of class
* Create instance methods
    - `def` & `end` inside a class, used in object instance
* Discuss methods as messages to objects
    - `#send`, `#respond_to?`
    - `1.send :+, 2`
    - `1.+ 2       # same thing`
    - `.` is the message-sending operator
    - `1 + 2       # same thing`
* Call methods on the implicit or explicit `self`
    - self is the "current object" and the default receiver of messages (method calls)
* Define attribute readers and writers using `attr_` macros
    - The `#attr_` is a family of methods for classes which defines "getter" and "setter" methods 
* Get more practice with array compositions (`each`, `map`, `find`, `select`, `reduce`)
    - filler
* Explain the need for variable scope 
    - vanilla => local variable
    - `@` instance variable
    - `@@` class variable
    - `$` global variable
* Reminder: stay Responsible, stay DRY
    - Code smells when you use it more than thrice
    - Methods should be about 5 lines long
    - Classes should be less than 100 lines long

## Deliverables

Here is a naive implementation of a bank account in Ruby using only a hash which stores key-value pairs.

```ruby
bank_account = {"user_id": 3, "balance": 100}
```

## Sequence
Write an implementation of a bank account that meets the following requirements:

* can print the balance of the account
* can deposit money into the account
* can withdraw money from the account
* keeps track of the customer id of the account
* remembers all accounts