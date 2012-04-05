class SessionsController < ApplicationController
  def new
#    @session = Session.new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    logger.info "***************#{@user.inspect}"
    if @user && @user.authenticate(params[:session][:password])
      sign_in(@user)
      redirect_to  show_user_session_path(@user.id)
    else
      redirect_to new_session_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
  def show_user 
    @user = User.find(params[:id])
  end


end
