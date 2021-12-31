class Pay < ApplicationRecord
    has_many:pays_regions
    has_many:utilisateur_pays
    has_many:ressource_pays
    has_many:pays_unite_administratives
    
    has_many :utilisateurs, :through => :utilisateur_pays,dependent: :delete_all
    has_many :unite_administratives, :through => :pays_unite_administratives,dependent: :delete_all
    has_many :regions, :through => :pays_regions,dependent: :delete_all
    has_many :ressources, :through => :ressource_pays,dependent: :delete_all

    accepts_nested_attributes_for:utilisateur_pays,allow_destroy:true
    accepts_nested_attributes_for:pays_regions,allow_destroy:true
    accepts_nested_attributes_for:regions
    accepts_nested_attributes_for:pays_unite_administratives,allow_destroy:true
    accepts_nested_attributes_for:unite_administratives
end
