class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    
  end

  def create
    @student = Student.new
    Student.first_name = params[:student][:first_name]
    Student.last_name = params[:student][:last_name]
    @student.save
  end

end
