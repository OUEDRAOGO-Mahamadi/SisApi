class TypeRessource < ApplicationRecord
    has_many:ressources
    has_many:ressource_sous_ressource
    has_many:type_sous_type_ressource
   
    has_many :sous_type_ressources, :through => :ressource_sous_ressource,dependent: :delete_all
    has_many :sous_type_ressources, :through => :type_sous_type_ressource,dependent: :delete_all

    accepts_nested_attributes_for:ressource_sous_ressource,allow_destroy:true
    accepts_nested_attributes_for:type_sous_type_ressource,allow_destroy:true
end
