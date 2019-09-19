# Many to Many Relationships

## Review
- Object Orientation
  - Modelling real world objects and relationships
  - Let's build out the recipe class
    1. Creating a class
    2. Getters & Setters
    3. Getters & Setters without the macro
    4. class variable `all`
    5. `#initialize`
    6. Default Arguments
    7. Creating an array
    8. Saving instances in `all` array
    9. `.all`
- Instances vs Classes
  - What makes a method an instance method vs a class method? What is each good for?
  - What about instance vs class variables?
  - `self`

## Objectives
- Implement both sides of a many to many relationship
  - *What are some examples of many-to-many relationships?*
  - *How do we add an ingredient to a recipe? How about a recipe to an ingredient?*
- Demonstrate **single source of truth** by not storing collections of objects on other objects & not storing one object in multiple collections
  - *What class do we need to create here to hold our relationship?*
  - Each class should only be responsible for one particular thing
  - *How do we access just the recipe ingredients that belong to a particular recipe?*
  - *How do we get the ingredients for a particular recipe (using our previous method)?*
