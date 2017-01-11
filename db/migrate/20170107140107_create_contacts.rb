class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|

      t.timestamps null: false
      t.string :email
      t.string :name
      t.string :description
    end
  end
end
