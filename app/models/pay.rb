class Pay < ApplicationRecord
    has_many:pays_regions
    has_many:ressource_pays
    has_many :regions, :through => :pays_regions,dependent: :delete_all
    has_many :ressources, :through => :ressource_pays,dependent: :delete_all

    accepts_nested_attributes_for:pays_regions,allow_destroy:true
    accepts_nested_attributes_for:regions
end
