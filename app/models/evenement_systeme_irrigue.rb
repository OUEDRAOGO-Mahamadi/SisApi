class EvenementSystemeIrrigue < ApplicationRecord
  belongs_to :evenement
  belongs_to :type_systeme_irrigue
end
