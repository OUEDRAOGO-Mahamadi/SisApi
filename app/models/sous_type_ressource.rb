class SousTypeRessource < ApplicationRecord
    has_many:ressources
    has_many:type_sous_type_ressources
    has_many:ressource_sous_ressources

    # has_many :type_ressources, :through => :ressource_sous_ressource,dependent: 
    has_many :type_ressources, :through => :type_sous_type_ressources,dependent: :delete_all

    accepts_nested_attributes_for:type_sous_type_ressources,allow_destroy:true
    accepts_nested_attributes_for:ressource_sous_ressources,allow_destroy:true
end
