class PaymentsController < ApplicationController

	
	def new
	end

	def create
	  # Amount in cents
	  @amount = @product.price

	  customer = Stripe::Customer.create(
	    :email => user.email,
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to payments_path
	end


end
