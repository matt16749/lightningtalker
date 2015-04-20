class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders] 
  has_one :location, dependent: :destroy
  has_many :requests
  after_create :create_location

  delegate :address, :city, :state, :zip, to: :location

  scope :is_instructor, -> {where(is_instructor: true)}

  def slug_candidates
    [:first_name,
      [:first_name,:last_name]
    ]
  end
end
