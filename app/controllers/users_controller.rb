class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def sign_up
    @user = User.new(params[:user])
    if @user.save
      redirect_to students_new_student_path
    else
      render  :action => :new
    end
  end

  def show
  end
end
