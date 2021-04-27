class MotCle < ApplicationRecord
    has_many:ressource_mot_cles
    has_many :ressources, :through => :ressource_mot_cles,dependent: :delete_all
end
