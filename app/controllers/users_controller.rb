# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @past = @user.attended_events.past
    @upcoming = @user.attended_events.upcoming
  end

  def create
    @user = User.new(params_user)
    if @user.save
      flash[:notice] = "You're successfully signed in!"
      session[:user_id] = @user.id
      redirect_to events_path
    else
      redirect_to new_session_path, info: 'Oops, you need to sign up'
    end
  end

  private

  def params_user
    params.require(:user).permit(:username)
  end
end
