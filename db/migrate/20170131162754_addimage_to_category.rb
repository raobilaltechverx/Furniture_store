class AddimageToCategory < ActiveRecord::Migration
  def change
  	add_attachment :admin_categories, :image
  end
end
