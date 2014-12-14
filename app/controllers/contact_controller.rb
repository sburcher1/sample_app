class ContactController < ApplicationController
	def contact_input

	end
	def contact_output
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		ActionMailer::Base.mail(:from => @email, 
			:to => 'sburcher1@gmail.com', 
			:subject => "A new contact form message", 
			:body => @message).deliver
	end
end