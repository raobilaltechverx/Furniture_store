class Admin::Product < ActiveRecord::Base
has_and_belongs_to_many :categories 
has_attached_file :avatar, styles: {large: "458x606",normal: "253x337#",thumbnail: "72x72",small: "88x144",sidebar: "270x357" }
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
accepts_nested_attributes_for :categories
has_many :line_items
has_and_belongs_to_many :orders



def avatar_url
        avatar.url(:large)
    end
end
