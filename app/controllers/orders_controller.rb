class OrdersController < ApplicationController
  protect_from_forgery with: :null_session
  # before_action :logged_in_user
  before_filter :authenticate_user!

	def index
	end
	
	def show
	end
	
	def new
	end
	
	def create
	end
	
	def destroy
	end

  private
    # def logged_in_user
      # unless logged_in?
      # flash[:danger] = "Please log in to view your orders."
      # redirect_to login_url
end