	class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :admin_categories_products do |t|
    	t.integer :category_id
    	t.integer :product_id
    end
  end
end
