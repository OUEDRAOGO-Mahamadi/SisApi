class UniteAdministrative < ApplicationRecord
    has_many:ressource_unite_administratives
    has_many :ressources, :through => :ressource_unite_administratives,dependent: :delete_all
end
