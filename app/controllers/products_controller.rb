class ProductsController < ApplicationController
before_action :set_admin_product, only: [:show, :edit, :update, :destroy]
def index
	@admin_products = Admin::Product.all
end

def show

    @product = Admin::Product.find(params[:id])
end
private

    def set_admin_product
      @admin_product = Admin::Product.find(params[:id])
    end

end
