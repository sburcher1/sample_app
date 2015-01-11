require 'rails_helper'

describe UsersController do

  before do
    @user = User.create(companyname: "Industry51")
  end

  describe "GET show" do
    context "User is logged in" do
      before do
        session[:user_id] = @user.id # simulate a logged in user
      end

      it "should load the correct user details" do
        get :show
        expect(response.status).to eq 200
        expect(assigns(:user)).to eq @user
      end
    end

    context "No user is logged in" do
      it "should redirect to login" do
        get :show
        expect(response).to redirect_to(log_in_path)
      end
    end
  end

end