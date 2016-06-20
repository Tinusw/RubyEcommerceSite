class PaymentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    #Create charge on Stripe Servers.
    begin
      charge = Stripe::Charge::create(
        :amount => @product.price * 100,
        :currency => "usd",
        :source => token,
        :desc => params[:stripeEmail]
        )
    rescue Stripe::CardError => e 
      #Card was declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
  end
    redirect_to product_path(@product)
  end
end
