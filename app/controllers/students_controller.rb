class StudentsController < ApplicationController
  def index
  end

  def new
    @student = StudentDetails.new
  end

  def create
    @student = StudentDetails.new
    if @student.save
      redirect_to edit_students_path
    end
  end


  def show
  end


  def destroy
  end
end
