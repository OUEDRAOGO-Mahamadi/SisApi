class RessourceLocalite < ApplicationRecord
  belongs_to :ressource
  belongs_to :sous_localite
end
