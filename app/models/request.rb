class Request < ActiveRecord::Base
  has_one :location, dependent: :destroy
  after_create :create_location                       
                       
  scope :by_student, ->(id) {where(student_id: id)}
  scope :by_instructor, ->(id) {where(instructor_id: id)}

  def no_instructor?
    self.instructor_id.blank? ? nil : "#{User.full_name(self.instructor_id)}"
  end
end
