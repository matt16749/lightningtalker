class Request < ActiveRecord::Base
  belongs_to :location, dependent: :destroy
  has_one :student, class_name: "User",
                    foreign_key: "student_id"
  has_one :instructor, class_name: "User",
                       foreign_key:"instructor_id"

end
