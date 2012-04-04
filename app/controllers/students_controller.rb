class StudentsController < ApplicationController
  def index
  end

  def new_student
    @student = StudentInfo.new
  end

  def create_student
    @student = StudentInfo.new(params[:student_info])
    @student.save
    logger.info @student.id.inspect
    redirect_to show_student_student_path(@student.id)
  end

  def show_student
    @student = StudentInfo.find(params[:id])
  end

  def destroy
  end
end
