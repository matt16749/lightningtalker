require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "factories" do 
    it 'has valid factories'  do 
      user = build(:user)
      expect(user).to be_valid
    end
  end
end
