class PaymentsController < ApplicationController

	
	def new

	end

	def create
	  # Amount in cents
	  @product = Product.find(params[:id])
	  @amount = @product.price

	  customer = Stripe::Customer.create(
	    :email => current_user.email,
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => current_user.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to payments_path
	end


end
