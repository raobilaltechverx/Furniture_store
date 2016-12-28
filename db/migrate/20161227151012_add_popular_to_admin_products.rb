class AddPopularToAdminProducts < ActiveRecord::Migration
  def change
    add_column :admin_products, :popular, :boolean
  end
end
