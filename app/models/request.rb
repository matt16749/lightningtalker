class Request < ActiveRecord::Base
  has_one :location, dependent: :destroy
  has_one :student, class_name: "User",
                    foreign_key: "student_id"
  has_one :instructor, class_name: "User",
                       foreign_key:"instructor_id"
  after_create :create_location                       
                       
  scope :by_student, ->(id) {where(student_id: id)}
  scope :by_instructor, ->(id) {where(instructor_id: id)}

  def has_instructor?
    self.instructor_id.blank? ? "No" : "Yes"
  end
end
