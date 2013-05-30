Twitter Follower
------------

* visit https://dev.twitter.com/apps/new to register your app
* generate your oauth tokens (this is done after you create your app in twitter)
* open up terminal on mac

<pre>
      gem install twitter
      CONSUMER_KEY=your_key
      CONSUMER_SECRET=%your_consumer_secret%
      OAUTH_TOKEN=%oauth_token%
      OAUTH_TOKEN_SECRET=%oauth_token_secret%
</pre>

Run the script
-----------

<pre>
  ruby twitter_followers.rb
</pre>
