class Image < ApplicationRecord
    has_many:ressource_imgs
    has_many :ressources, :through => :ressource_imgs,dependent: :delete_all
end
