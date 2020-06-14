class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @student.save
  end

  def create
  end

end
