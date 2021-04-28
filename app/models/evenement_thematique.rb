class EvenementThematique < ApplicationRecord
  belongs_to :evenement
  belongs_to :thematique
end
