class Order < ActiveRecord::Base
has_many :line_items
has_and_belongs_to_many :products
end
