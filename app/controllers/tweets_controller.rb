class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.includes(:user)
    @tweet_all = Tweet.all
  end

  def create
    Tweet.create(image: tweet_params[:image], content: tweet_params[:content], user_id: current_user.id)
  end

  private
  def tweet_params
    params.permit(:image, :content)
  end
    
end
