class StudentsController < ApplicationController
  def index
  end

  def new
    @student = StudentInfo.new
  end

  def create
    logger.info "++++++++++++++++++++++++++++++++++++++"
    @student = StudentInfo.new(params[:id])
    logger.info("%%%%%%%%#{@student.inspect}")
    @student.save
  end

  def show
  end

  def destroy
  end
end
