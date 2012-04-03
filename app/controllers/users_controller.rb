class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def sign_up
    @user = User.new(params[:user])
    @user.save
  end

  def show
  end
end
