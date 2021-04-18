class Evenement < ApplicationRecord
  belongs_to :thematique
  belongs_to :type_systeme_irrigue
  belongs_to :type_evenement
  belongs_to :profile
  belongs_to :unite_administrative
end
