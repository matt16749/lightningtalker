class StudentsController < ApplicationController
  def index
    @students = User.is_student
  end

  def show
    @student = User.find_by(first_name: params[:id].capitalize)
    @requests = @student.student_requests
  end
end