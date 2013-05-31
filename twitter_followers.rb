require 'twitter'
require 'debugger'

# first: visit https://dev.twitter.com/apps/new to register your app
# second: generate your oauth tokens (this is done after you create your app in twitter)
# third: open up terminal on mac
# gem install twitter
# run the by typing the following in your terminal:
# CONSUMER_KEY=your_key CONSUMER_SECRET=%your_consumer_secret% OAUTH_TOKEN=%oauth_token% OAUTH_TOKEN_SECRET=%oauth_token_secret% ruby twitter_followers.rb
# 

user_name = ENV["USER_NAME"]

Twitter.configure do |config|
  config.consumer_key = ENV["FOLLOWERS_CONSUMER_KEY"]
  config.consumer_secret = ENV["FOLLOWERS_CONSUMER_SECRET"]
  config.oauth_token = ENV["FOLLOWERS_OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["FOLLOWERS_OAUTH_TOKEN_SECRET"]
end

class FollowerGrabber
  attr_accessor :user_name
  def initialize(user_name)
    @user_name = user_name
  end

  def get_followers_at_cursor(cursor = -1)
    response = Twitter.followers(user_name, :cursor => cursor)
    users = response.users
    users << if response.next_cursor != 0
      sleep 2
      puts "grabbing cursor #{response.next_cursor}"
      get_followers_at_cursor(response.next_cursor)
    end
    users.flatten
  end
end

debugger 
puts ""


puts user_name