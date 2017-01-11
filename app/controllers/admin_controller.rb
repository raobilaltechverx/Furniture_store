class AdminController < ApplicationController
	layout 'admin'
	protect_from_forgery with: :null_session
	skip_before_filter :verify_authenticity_token
protect_from_forgery prepend: true, with: :exception
before_action :authenticate_user!

	  before_filter :is_admin?

def is_admin?
		if current_user.has_role? 'admin'
  			@users = User.all
  			true
		
		else
  		render :text => 'Who are you to doing this? :)'
		sign_out current_user 
		end
	end



end
