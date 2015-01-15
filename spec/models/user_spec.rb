require 'rails_helper'

  describe User do

  context "companyname present" do

    it "should return user companyname" do
    	user = build(:user)
      	expect(user.companyname).to eq "Research24"
    end
  end
end