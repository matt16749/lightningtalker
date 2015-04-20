class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders] 
  has_one :location, dependent: :destroy
  has_many :student_requests, class_name: "Request",
                              foreign_key: :student_id,
                              primary_key: :id
  has_many :instructor_responses, class_name: "Request",
                              foreign_key: :instructor_id,
                              primary_key: :id

  after_create :create_location

  delegate :address, :city, :state, :zip, to: :location

  scope :is_instructor, -> {where(is_instructor: true)}


  def slug_candidates
    [:first_name,
      [:first_name,:last_name]
    ]
  end

  def self.full_name(id)
    user = find(id)
    return "#{user.first_name} #{user.last_name}"
  end
end
