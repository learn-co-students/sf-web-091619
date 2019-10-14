# Rails Associations
## Create New Application & Generate Models etc.
	- `rails new dinnerpicker`
	- `rails g resource User name` & `rails g resource Dinner name cost user:references`
	- What does `rails g resource` create?
		- Model
		- Migration
		- Controller
		- Views Folder
		- Routes
	- `rails db:migrate`

## Models
- Add `has_many :dinners, :dependent => :delete_all` to User model

## Controllers
- Generate each route including private methods

- User controller in the end:
```ruby
class UsersController < ApplicationController
	before_action :find_user, only: [:show, :update, :edit, :destroy]

	def index
		@users = User.all
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to @user
	end

	def edit
	end

	def update
		@user.update(user_params)
		
		redirect_to @user
	end

	def destroy
		@user.destroy

		redirect_to users_path
		# or redirect_to @users
	end

	private
	def user_params
		params.require(:user).permit(:name)
	end

	def find_user
		@user = User.find(params[:id])
	end
end
```

## Views
- Create views:
  - index.html.erb
  - show.html.erb
  - new.html.erb (`<%= render partial: "form" %>`)
  - edit.html.erb (`<%= render partial: "form" %>`)
  - _form.html.erb

- For Dinners new form:
```html
<%= f.label :user_id, "User" %>
<%= f.select :user_id, @users.map {|u| [u.name, u.id]} %>
```

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