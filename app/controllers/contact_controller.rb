class ContactController < ApplicationController
	def form_input
		ActionMailer::Base.mail(:from => 'from@domain.com', :to => 'to@domain.com', :subject => "Welcome to My Awesome Site", :body => 'I am the email body.').deliver
	end
	def form_output
		render "form_example/form_result"
	end
end