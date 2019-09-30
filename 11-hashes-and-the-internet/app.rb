require 'json'
require 'pry'
require 'rest-client'

response = RestClient.get('http://www.wikipedia.org')

binding.pry

puts "Getting stuff!"