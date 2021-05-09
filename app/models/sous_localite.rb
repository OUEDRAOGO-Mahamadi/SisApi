class SousLocalite < ApplicationRecord
    has_many:localite_localites
    has_many:ressource_localites
    has_many :localites, :through => :localite_localites,dependent: :delete_all

    has_many :ressources, :through => :ressource_localites,dependent: :delete_all
end
