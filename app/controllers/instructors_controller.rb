class InstructorsController < ApplicationController
  def index
    @instructors = User.is_instructor
  end

  def show
    @instructor = User.find_by(first_name: params[:id].capitalize)
    @responses = @instructor.instructor_responses
  end
end