class UniteAdministrative < ApplicationRecord
    has_many:ressource_unite_administratives
    has_many :ressources, :through => :ressource_unite_administratives,dependent: :delete_all
    
    has_many:pays_unite_administratives
    has_many :pays, :through => :pays_unite_administratives,dependent: :delete_all

 
    has_many:evenement_unite_administratives
    has_many :evenements, :through => :evenement_unite_administratives,dependent: :delete_all

    # has_many:utilisateur_unite_administratives
    # has_many :utilisateurs, :through => :utilisateur_unite_administratives,dependent: :delete_all

    accepts_nested_attributes_for:pays_unite_administratives,allow_destroy:true
    #accepts_nested_attributes_for:utilisateur_unite_administratives,allow_destroy:true
end
