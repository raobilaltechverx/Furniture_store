class Admin::Category < ActiveRecord::Base
 has_and_belongs_to_many :products, class_name: 'Admin::Product'
 acts_as_tree order: "name"
 has_attached_file :image, styles: {large: "458x606",normal: "253x337#",thumbnail: "72x72",small: "88x144",sidebar: "270x357" }
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

def image_url
        image.url(:large)
    end

end
