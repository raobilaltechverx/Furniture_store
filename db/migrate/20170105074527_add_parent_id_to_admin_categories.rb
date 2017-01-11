class AddParentIdToAdminCategories < ActiveRecord::Migration
  def change
    add_column :admin_categories, :parent_id, :integer
  end
end
