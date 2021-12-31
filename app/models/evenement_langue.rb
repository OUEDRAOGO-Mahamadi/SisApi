class EvenementLangue < ApplicationRecord
  belongs_to :langue
  belongs_to :evenement
end
