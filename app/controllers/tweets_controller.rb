class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweet_all = Tweet.all
  end
end
