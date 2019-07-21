class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def new 
    @student = Student.new
  end 

  def create
    @student = Student.new(student_params)
    # @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

  def show
  end

  private 

  def set_student
  @student = Student.find(params[:id])
  end 

  def student_params
    params.require(:student).permit(:first_name, :last_name) 
  end 
end
