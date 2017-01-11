class HomeController < ApplicationController
def index
	 @admin_products = Admin::Product.all
	 @admin_sliders = Admin::Slider.all
end

end
