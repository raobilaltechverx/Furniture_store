class CreateAdminSliders < ActiveRecord::Migration
  def change
    create_table :admin_sliders do |t|

      t.timestamps null: false
      t.string :text
      t.attachment :avatar
    end
  end
end
