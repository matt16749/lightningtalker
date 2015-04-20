require 'rails_helper'

RSpec.describe Location, :type => :model do
  describe "location factories" do 
    it 'has a valid factory' do 
      location = create(:location)
      expect(location).to be_valid
    end
  end
end
