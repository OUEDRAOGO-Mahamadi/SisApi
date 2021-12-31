class UtilisateurPay < ApplicationRecord
  belongs_to :pay
  belongs_to :utilisateur
end
