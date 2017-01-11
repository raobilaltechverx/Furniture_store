class ProductsController < ApplicationController
before_action :set_admin_product, only: [:show, :edit, :update, :destroy]
def index
	@admin_categories = Admin::Category.all
	if params[:category_id].present?
    @admin_products = Admin::Product.joins(:categories).where("admin_categories.id" => params[:category_id])
	else
	@admin_products = Admin::Product.all
end
end

def show
    @product = Admin::Product.find(params[:id])
    @admin_categories = Admin::Category.all
    if params[:category_id].present?
    @admin_products = Admin::Product.joins(:categories).where("admin_categories.id" => params[:category_id])
	else
	@admin_products = Admin::Product.all
end
end
private

    def set_admin_product
      @admin_product = Admin::Product.find(params[:id])
    end

end
