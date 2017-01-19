class CreateAdminCmsPages < ActiveRecord::Migration
  def change
    create_table :admin_cms_pages do |t|

      t.timestamps null: false
      t.string :title
      t.string :description
      t.attachment :avatar
    end
  end
end
