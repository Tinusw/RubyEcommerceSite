class OrdersController < ApplicationController
  # before_filter :authenticate_user!
  protect_from_forgery with: :null_session
  
  def index
  end

  def show 
  end

  def create
  end

  def destroy
  end
end
