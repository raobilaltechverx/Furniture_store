class Api::V1::CategoriesController < ApplicationController
	 respond_to :json
def index
         @categories = Admin::Category.all
        
        #render :json => @categories.to_json(:only => [:id,:name], :methods => [:image_url], :methods => [:subcategories])}
render :json => {:status => :ok, :categories => @categories.as_json(:only => [:id,:name], :methods => [:image_url,:has_child])  }

end

def show
	 @category = Admin::Category.find(params[:id])
	 if  @category.children.present?
	  @categories =  @category.children
	  render :json => {:status => :ok, :categories => @categories.as_json(:only => [:id,:name], :methods => [:image_url,:has_child])  }
	 else

		@products =  @category.products
	 render :json => {:status => :ok, :products => @products.as_json(:only => [:id,:name,:price], :methods => [:avatar_url])  }
	end
	end

	def product
	@category = Admin::Category.find(params[:id])
	@products = @category.products
    render :json => {:status => :ok, :products => @products.as_json(:only => [:id,:name,:price], :methods => [:avatar_url])  }
	end
end
