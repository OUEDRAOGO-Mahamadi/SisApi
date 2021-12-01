class Auteur < ApplicationRecord
    has_many:ressource_auteurs
    has_many :ressources, :through => :ressource_auteurs,dependent: :delete_all
end
