require 'rails_helper'

  describe User do

  context "email present" do

    before { @user = User.new(email: "email1@gmail.com") }

    it "should return user email" do
      expect(@user.email).to eq "email1@gmail.com"
    end
  end
end