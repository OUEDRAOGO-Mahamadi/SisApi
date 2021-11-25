class RessourceSousRessource < ApplicationRecord
  belongs_to :ressource
  belongs_to :sous_type_ressource
end
