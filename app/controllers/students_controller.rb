class StudentsController < ApplicationController
  def index
    @students = User.where(isinstructor: false)
  end

  def show
    @student = User.find(params[:id])
  end
end