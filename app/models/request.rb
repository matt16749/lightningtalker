class Request < ActiveRecord::Base
  has_one :location, dependent: :destroy
  after_create :create_location                       
                       
  scope :by_student, ->(id) {where(student_id: id)}
  scope :by_instructor, ->(id) {where(instructor_id: id)}

  def has_instructor?
    self.instructor_id.blank? ? "No" : "Yes"
  end
end
