class RessourceAuteur < ApplicationRecord
  belongs_to :auteur
  belongs_to :ressource
end
