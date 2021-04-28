class Profile < ApplicationRecord
    has_many:utilisateurs
    has_many:ressource_profiles
    has_many :ressources, :through => :ressource_profiles,dependent: :delete_all

    has_many:evenement_profiles
    has_many :evenements, :through => :evenement_profiles,dependent: :delete_all

  
end
