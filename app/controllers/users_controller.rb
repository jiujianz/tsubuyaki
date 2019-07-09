class UsersController < ApplicationController

  def show
    @tweets = Tweet.where(user_id: current_user.id).order("created_at DESC")
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
