require 'rails_helper'

describe UsersController do

  before do
    @user = User.create!(email: "a@b.com", password: "password", password_confirmation: "password")
  end

  describe "GET show" do
    context "User is logged in" do
 
      it "should load the correct user details" do
        sign_in @user
        get :show, {id:  @user.id}
        expect(response.status).to eq 200
        expect(assigns(:user)).to eq @user
      end
    end

    context "No user is logged in" do
      it "should redirect to login" do
        get :show,  {id:  @user.id}
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

end