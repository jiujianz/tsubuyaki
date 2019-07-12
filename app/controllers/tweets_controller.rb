class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def create
    Tweet.create(image: tweet_params[:image], content: tweet_params[:content], user_id: current_user.id)
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end

  private
  def tweet_params
    params.permit(:image, :content)
  end
    
end
