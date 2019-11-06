# Rails as an API
## JSON Review
- JSON is **language agnostic**
- You can parse a **stringified object** into your language of choice (JavaScript: Object, Ruby: Hash)

## The `—api` Flag
- `rails new appname --api`
- Different views/not using views anymore
- Our controllers inherit from `ActionController::API` instead of `ActionController::Base`

## Serialization
- Serialization allows us to control and specify the shape of the data (in this case json) that we receive from our backend
- Add `active_model_serializers` to Gemfile
- Create a serializer `rails g serializer animal`
```ruby
class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :species
  # belongs_to :species

  def species
    object.species.name
  end
end
```

## CORS
- Two separate websites, or ORIGINS should not be able to communicate with each other by default
- CORS is simply a browser *law* that stops two sites of different origins from communicating
- We need to tell our backend to allow CORS
- Add `rack-cors` to gemfile and `bundle install`
- Comment in code in cors file & change the origin

## Build out CRUD
