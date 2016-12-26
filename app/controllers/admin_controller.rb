class AdminController < ApplicationController
	layout 'admin'
	protect_from_forgery with: :null_session
end
