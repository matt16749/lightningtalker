require 'rails_helper'

RSpec.describe Request, :type => :model do
    describe "request factories" do 
    it 'has a valid factory' do 
      request = create(:request)
      expect(request).to be_valid
    end
  end
end
