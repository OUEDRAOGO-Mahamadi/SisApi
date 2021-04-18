class Ressource < ApplicationRecord
  belongs_to :format
  belongs_to :langue
  belongs_to :mot_cle
  belongs_to :utilisateur
  belongs_to :unite_administrative
  belongs_to :thematique
  belongs_to :type_systeme_irrigue
  belongs_to :type_ressource
  belongs_to :profile
end
