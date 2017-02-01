class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :cms_pages

  def cms_pages
  	@cms_pages = Admin::CmsPage.all
  	@contact = Contact.new
  	
  end

end
