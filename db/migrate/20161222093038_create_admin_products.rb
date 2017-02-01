class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
    	t.string :name
    	t.integer :price
    	t.integer :discounted_pric
    	t.string :description
      t.timestamps null: false
      t.attachment :avatar
      t.boolean :feature_pro
    end
  end

  def down
    remove_table :admin_products
  end

end
