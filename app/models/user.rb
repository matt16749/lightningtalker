class User < ActiveRecord::Base
  has_one :location, dependent: :destroy
  has_many :requests
  after_create :create_location
end
