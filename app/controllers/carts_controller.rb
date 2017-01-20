class CartsController < ApplicationController
def cart_script
	byebug
	@product = Admin::Product.find(params[:id])

	@current_order = Order.create

	line_item = LineItem.create(params[:product_id => @product.id,:order_id => @current_order.id])
end
end

