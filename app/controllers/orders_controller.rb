class OrdersController < ApplicationController
  before_action :logged_in_user
	
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
    def logged_in_user
      unless logged_in?
      flash[:danger] = "Please log in to view your orders."
      redirect_to login_url
      end
    end
end