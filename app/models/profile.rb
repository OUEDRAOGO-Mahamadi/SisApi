class Profile < ApplicationRecord
    has_many:evenements
    has_many:ressources
    has_many:utilisateurs
end
