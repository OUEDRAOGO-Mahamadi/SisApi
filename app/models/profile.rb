class Profile < ApplicationRecord
    has_many:ressource_profiles
    has_many :ressources, :through => :ressource_profiles,dependent: :delete_all
end
