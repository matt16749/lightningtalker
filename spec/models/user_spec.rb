require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "user factories" do 
    before(:each) do 
      @user = create(:user)
    end
    it 'has valid factories' do 
      expect(@user).to be_valid
    end
    it 'creates associated location' do 
      expect(Location.all.count).to match(1)
    end
    it 'destroys associated location upon destruction of user' do 
      @user.destroy
      expect(Location.all.count).to match(0)
    end
  end
  describe 'student factory' do 
    before(:each) do 
      @student = create(:user_student)
    end
    it 'creates a valid factory' do 
      expect(@student).to be_valid
    end
    it 'is not a instructor' do 
      expect(@student.isinstructor).to match(false)
    end 
  end
  describe 'instructor factory' do 
    before(:each) do  
      @instructor = create(:user_instructor)
    end
    it 'creates a valid factory' do       
      expect(@instructor).to be_valid
    end
    it 'is an instructor' do 
      expect(@instructor.isinstructor).to match(true)
    end
  end
  describe 'creating a request' do 
    it 'allows students to make a request' do 
      student = create(:user_student)
      request = create(:request, student_id: student.id)
      expect(request.student_id).to match(student.id)
    end
    it 'allows instructors to take on requests' do 
      student = create(:user_student)
      request = create(:request, student_id: student.id)
      instructor = create(:user_instructor)
      request.instructor_id = instructor.id
      expect(request.instructor_id).to match(instructor.id)
    end
  end
end
