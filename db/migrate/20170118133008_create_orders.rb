class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

      t.timestamps null: false
      t.string :email
      t.integer :number
      t.integer :product_id
      t.string :address

    end
  end
end
