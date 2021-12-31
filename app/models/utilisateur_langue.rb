class UtilisateurLangue < ApplicationRecord
  belongs_to :langue
  belongs_to :utilisateur
end
