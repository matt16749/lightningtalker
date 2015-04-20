require 'factory_girl_rails'
require 'faker'

# Students
10.times do 
  student = FactoryGirl.create :user_student
  student.location = FactoryGirl.create :location
  5.times do 
    request = FactoryGirl.create(:request, student_id: student.id)
    request.location = FactoryGirl.create :location
  end
end
