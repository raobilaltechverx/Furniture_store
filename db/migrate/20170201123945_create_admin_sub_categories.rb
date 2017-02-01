class CreateAdminSubCategories < ActiveRecord::Migration
  def change
    create_table :admin_sub_categories do |t|

      t.timestamps null: false
      t.string :name
      t.attachment :image
      t.integer :category_id
      t.integer :parent_id
    end
  end
end
