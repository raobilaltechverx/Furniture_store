class Admin::Slider < ActiveRecord::Base
has_attached_file :avatar, styles: {large: "458x606",normal: "253x337#",thumbnail: "72x72",small: "88x144",sidebar: "270x357" }
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
