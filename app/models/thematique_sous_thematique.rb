class ThematiqueSousThematique < ApplicationRecord
  belongs_to :thematique
  belongs_to :sous_thematique
end
