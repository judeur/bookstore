require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = User.create!(email: "somebody@example.com", password: "12345678")
    @useralso = User.create!(email: "other@example.com", password: "87654321")
  end

  describe "GET #show" do
    before do
      sign_in :user
      context "User is logged in" do
        expect(assigns(:user)).to eq @user
      end
    end
  end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "user cannot access show page of other user" do
      it "gets response of 403" do
        get :show, id: @useralso.id
        expect(response).to have_http_status(403)
      end

    end

  end
