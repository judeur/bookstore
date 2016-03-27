require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = FactoryGirl.create(:user)
    @useralso = User.create!(email: "other@example.com", password: "87654321")
    #@useralso = FactoryGirl.create(:useralso)
  end

  describe "GET #show" do
    before do
      sign_in @user
      context "User is logged in" do
        expect(assigns(:user)).to eq @user
      end
    end
  end

  describe "No user is logged in" do
    it "redirects to login" do
      get :show, id: @user.id
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "User cannot access page other user" do
    before do
      sign_in @user
    end
    it "gets response of 403" do
      get :show, id: @useralso.id
      expect(response).to have_http_status(403)
    end
  end

end
