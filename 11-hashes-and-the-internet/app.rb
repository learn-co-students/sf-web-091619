require 'json'
require 'pry'
require 'rest-client'

puts
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "} Welcome to the BookWorm CLI! {"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts
puts "Enter a title or some keywords for books in which you're interested."
user_input = gets.chomp
puts 

user_input_formatted = user_input.split(" ").join("+")

url = "https://www.googleapis.com/books/v1/volumes?q=#{user_input_formatted}"
response = RestClient.get(url)
json = JSON.parse(response)

all_info_books = json["items"].map do |book|
    book["volumeInfo"]
end

some_info_books = all_info_books.map do |book|
    title = book["title"]
    authors = book["authors"]
    description = book["description"]
    {
        :title => title,
        :authors => authors, 
        :description => description
    } 
end

# json["items"][0]["volumeInfo"]
octothorpe_wall = "#" * 79

some_info_books.each do |book|
    puts octothorpe_wall
    puts
    puts book[:title]
    puts book[:authors]
    print "*-" * 39
    puts "*"
    puts book[:description]
    puts
end

puts octothorpe_wall

# binding.pry

# puts "Getting stuff!"