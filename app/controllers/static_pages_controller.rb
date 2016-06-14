class StaticPagesController < ApplicationController
  def index
    @products = Product.limit(6)
  end

  def thanks
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'tinus.wagnersa@gmail.com',
      :subject => "A new message on Bootshop from #{@name}",
      :body => @message).deliver_now
  end
end
