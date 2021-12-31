class UtilisateurTypeSIrrigue < ApplicationRecord
  belongs_to :type_systeme_irrigue
  belongs_to :utilisateur
end
