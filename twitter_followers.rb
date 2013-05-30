require 'twitter'


# first: visit https://dev.twitter.com/apps/new to register your app
# second: generate your oauth tokens (this is done after you create your app in twitter)
# third: open up terminal on mac
# gem install twitter
# run the by typing the following in your terminal:
# CONSUMER_KEY=your_key CONSUMER_SECRET=%your_consumer_secret% OAUTH_TOKEN=%oauth_token% OAUTH_TOKEN_SECRET=%oauth_token_secret% ruby twitter_followers.rb
# 

user_name = ENV["USER_NAME"]

Twitter.configure do |config|
  config.consumer_key = ENV["CONSUMER_KEY"]
  config.consumer_secret = ENV["CONSUMER_SECRET"]
  config.oauth_token = ENV["OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["OAUTH_TOKEN_SECRET"]
end


class FollowerGrabber
  def initialize(app_id, app_secret)

  end
end


puts user_name