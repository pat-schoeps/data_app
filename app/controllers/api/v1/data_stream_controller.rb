class Api::V1::DataStreamController < ApplicationController
	require 'twitter'

	twitter = Twitter::REST::Client.new do |config|
      config.consumer_key = 'lGts3iNppGyqXIArSQvrpE1Qb'
      config.consumer_secret = 'dOAF9XkeWcUhyqoDA88djWxCUCQo3kzPigZZfuZqTF3kB3NCOV'
      config.access_token = '341904327-LIQQEjmMvvfjBHVDXivRV772QvexJ21WBcqwqJRY'
      config.access_token_secret = '5qQvoeTqGtcCnkaRsPa0J5pgDPmkftPHJk7sC1vRM8h6p'
    end
    
    respond_to :json

    def index
      twitter = Twitter::REST::Client.new(config)
      search = twitter.search("to:justinbieber marry me", result_type: "recent").take(3)
      	render json: search, status: 200
    end

end
