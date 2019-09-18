# `require` methods for gems and local files
require 'pry'
# model creation
require_relative './tweet'
require_relative './user'

karl = User.new("karlthefog")
karl.post_tweet("fog is fun!")
karl.post_tweet("far out man")
karl.tweets
kermit = User.new("kermitthefrog")
kermit.post_tweet("it's not easy bein green")
kermit.post_tweet("feelin' blue? try dancing")


# Pry.start