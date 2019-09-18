# User class definition
class User
    attr_reader :username

    def initialize(username)
        @username = username
    end

    def post_tweet(message)
        Tweet.new(message, self)
    end

    def tweets
        binding.pry
        Tweet.all.select do |tweet|
            self == tweet.user 
        end
    end
end