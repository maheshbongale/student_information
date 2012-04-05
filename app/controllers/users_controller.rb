class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def sign_up
    @user = User.new(params[:user])
    if @user.save
      redirect_to sign_in_path
    else
      render  :action => :new
    end
  end
  def show
  end

  def edit_user
    logger.info"**************************"
    @user = User.find(params[:id])
    logger.info "***************#{@user.inspect}"
  end

  def update_user
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end

#  def update
#    @user = User.find(params[:id])
#    if @user.update_attributes(params[:user])
#      flash[:success] = "Profile updated"
#      sign_in @user
#      redirect_to @user
#    else
#      render 'edit_user'
#    end
#  end
end
