Twitter Follower
================
This app is a short demo that grabs all the twitter followers for a given user.


Setup
---------------

* visit https://dev.twitter.com/apps/new to register your app
* generate your oauth tokens (this is done after you create your app in twitter)
* open up terminal on mac

<pre>
      gem install twitter
      FOLLOWERS_CONSUMER_KEY=your_key
      FOLLOWERS_CONSUMER_SECRET=%your_consumer_secret%
      FOLLOWERS_OAUTH_TOKEN=%oauth_token%
      FOLLOWERS_OAUTH_TOKEN_SECRET=%oauth_token_secret%
</pre>

Run the script
-----------

<pre>
  ruby twitter_followers.rb
</pre>
