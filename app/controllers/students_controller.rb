class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to @student
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name, :last_name))
    redirect_to @student
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end