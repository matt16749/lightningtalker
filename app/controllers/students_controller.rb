class StudentsController < ApplicationController
  def index
    @students = User.where(isinstructor: false)
  end

  def show
    @student = User.find_by(first_name: params[:id].capitalize)
    @requests = Request.by_student(@student.id)
  end
end