class UtilisateurThematique < ApplicationRecord
  belongs_to :thematique
  belongs_to :utilisateur
end
