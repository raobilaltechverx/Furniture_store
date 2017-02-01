class Api::V1::CategoriesController < ApplicationController
	 respond_to :json
def index
         @categories = Admin::Category.all
        render :json => @categories.to_json(:only => [:id,:name], :methods => [:image_url])
end
end
