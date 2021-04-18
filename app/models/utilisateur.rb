class Utilisateur < ApplicationRecord
  belongs_to :structure
  belongs_to :specialite
  belongs_to :categorie
  belongs_to :profile
end
