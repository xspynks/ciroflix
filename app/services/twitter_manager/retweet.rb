module TwitterManager
  class Retweet < ApplicationService
    def initialize(query: "#prefirociro")
      @query = query
      @client = client
      @tweets = @client.search("#{@query} -rt", since_id: Constant.first.tweet_since_id)
    end
 
    def call
      @tweets.each do |tweet|
        Rails.logger.info "retweeting tweet id: #{tweet.id}"
        @client.retweet(tweet)
      end
 
      return if @tweets.first.blank?
 
      Constant.first.update(tweet_since_id: @tweets.first.id)
    end
 
    private
 
    def client
      Twitter::REST::Client.new do |config|
        config.consumer_key        = Rails.application.credentials.dig(:twitter, :api_key)
        config.consumer_secret     = Rails.application.credentials.dig(:twitter, :api_key_secret)
        config.access_token        = Rails.application.credentials.dig(:twitter, :access_token)
        config.access_token_secret = Rails.application.credentials.dig(:twitter, :access_token_secret)
      end
    end
  end
end