class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    # @tweets = @user.tweets.includes(:user)
    @tweet_all = Tweet.all
  end

  def create
    @tweet = @user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    end
  end
    
end
