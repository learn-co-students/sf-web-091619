# Rails Forms and REST (https://guides.rubyonrails.org/)
## Create A New Rails App With Migrations
- `rails g model Pizza name cost:integer size extra_cheese:boolean` (creates migration and model)
- `rails db:migrate`

## Create Routes
In routes.rb, `get "/pizzas", to: "pizzas#index"` or `resources :pizzas, only: [:index, :show]`
	- Custom path: `get "/pizzas/:id", to: "pizzas#show", as: "something_random"`
	- To look at all routes in server type `/rails/info/routes`

## Create Controller
- `rails g controller pizzas`
- Create index method (under the hood Rails will call `render :index`) and `index.html.erb` view file

## Create Views
- `link_to` - `<%= link_to pizza.name, pizza_path(pizza.id) %>` or  `<%= link_to pizza.name, pizza %>` (if we give it an instance it knows to get the right path)
- `form_for` creates a form for a model object
```ruby
<%= form_for @pizza do |f| %>
	<%= f.label :name, "Custom Label" %>
  <%= f.text_field :name %>
  <%= f.submit "Create" %>
<% end %>
```
- `form_tag` simply creates a form. 
```ruby
<%= form_tag("/search", method: "get") do %>
  <%= label_tag(:q, "Search for:") %>
  <%= text_field_tag(:q) %>
  <%= submit_tag("Search") %>
<% end %>
```

## Private Methods
In the same way classes sometimes want to keep certain methods private: methods that aren’t supposed to be called from outside of the object. Only the object itself is supposed to use them internally, from other methods.

## Strong Parameters
Mass-assignment saves us the need to assign values to each attribute of the model, but it can create problems. Since we aren’t restricting which attributes can be set nor are we checking the values of these attributes, a malicious hacker could assign any value to any attribute.