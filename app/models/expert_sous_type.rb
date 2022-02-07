class ExpertSousType < ApplicationRecord
  belongs_to :sous_type_expert
  belongs_to :utilisateur
end
