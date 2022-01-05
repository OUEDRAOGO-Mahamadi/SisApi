class Langue < ApplicationRecord
    has_many:ressource_langues
    has_many:utilisateur_langues
    has_many:evenement_langues

    has_many :ressources, :through => :ressource_langues,dependent: :delete_all

    has_many :evenements, :through => :evenement_langues,dependent: :delete_all

    has_many :utilisateurs, :through => :utilisateur_langues,dependent: :delete_all

    accepts_nested_attributes_for:utilisateur_langues,allow_destroy:true
    accepts_nested_attributes_for:ressource_langues,allow_destroy:true
    accepts_nested_attributes_for:evenement_langues,allow_destroy:true
end
