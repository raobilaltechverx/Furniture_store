class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|

      t.timestamps null: false
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
    end
  end
end
