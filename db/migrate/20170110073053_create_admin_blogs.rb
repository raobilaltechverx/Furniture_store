class CreateAdminBlogs < ActiveRecord::Migration
  def change
    create_table :admin_blogs do |t|

      t.timestamps null: false
      t.string :title
      t.string :description
      t.attachment :avatar
    end
  end
end
