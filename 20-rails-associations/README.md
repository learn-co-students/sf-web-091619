# Rails Associations
## Create New Application & Generate Models etc.
	- `rails new dinnerpicker`
	- `rails g resource User name` & `rails g resource Dinner name cost user:references`
	- What does `rails g resource` create?
	- `rails db:migrate`

## Models
- Add `has_many :dinners, :dependent => :delete_all` to User model

## Controllers
- Generate each RESTful controller method (& private methods)

## Views
- Create views:
  - index.html.erb
  - show.html.erb
  - new.html.erb (`<%= render partial: "form" %>`)
  - edit.html.erb (`<%= render partial: "form" %>`)
  - _form.html.erb

## Extras:
### Buttons & Links in Rails
```ruby
<%= button_to "Rails Edit Button", { action: :edit }, method: :get %>

<%= link_to "Rails Edit Link", "/users/#{@user.id}/edit" %>

<form action="/users/<%= @user.id %>/edit">
  <input type="submit" value="HTML Button Input" />
</form>

<a href="/users/<%= @user.id %>/edit">HTML Edit Link</a>
```

## Change column
- `rails g migration change_cost_to_be_integer_in_dinners` & `rails db:migrate`