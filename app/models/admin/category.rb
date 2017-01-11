class Admin::Category < ActiveRecord::Base
 has_and_belongs_to_many :products, class_name: 'Admin::Product'
 acts_as_tree order: "name"
end
