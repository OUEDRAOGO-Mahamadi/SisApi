class UniteAdministrative < ApplicationRecord
    has_many:ressource_unite_administratives
    has_many :ressources, :through => :ressource_unite_administratives,dependent: :delete_all
    

    has_many:evenement_unite_administratives
    has_many :evenements, :through => :evenement_unite_administratives,dependent: :delete_all
end
