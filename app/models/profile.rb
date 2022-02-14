class Profile < ApplicationRecord
    belongs_to :droit_evenement, optional: true
    belongs_to :droit_expert, optional: true
    belongs_to :droit_ressource, optional: true
    
    has_many:utilisateurs
    has_many:ressource_profiles
    has_many :ressources, :through => :ressource_profiles,dependent: :delete_all

    has_many:evenement_profiles
    has_many :evenements, :through => :evenement_profiles,dependent: :delete_all

  
end
