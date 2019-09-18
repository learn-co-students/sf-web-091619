require 'pry'
require 'require_all'
require_relative './tweet'
require_relative './user'
# require_all '.'

karl = User.new('KarlTheFog')
kermit = User.new('KermitTheFrog')

Tweet.new("it's not easy being green", kermit)
Tweet.new("can't wait to make people feel cold", karl)
Tweet.new("as an amphibian, I take offense to that", kermit)
Tweet.new("as a meteorological phenomenon, idgaf", karl)
Tweet.new("it's really not easy being green", kermit)

Pry.start