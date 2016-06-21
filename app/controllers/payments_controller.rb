class PaymentsController < ApplicationController
  def create
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => (@product.price*100).to_i, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
      )
      flash[:success] = "Payment processed successfully"
    rescue Stripe::CardError => e 
      #Card was declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
end
