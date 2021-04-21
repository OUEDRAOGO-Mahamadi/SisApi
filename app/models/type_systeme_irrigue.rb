class TypeSystemeIrrigue < ApplicationRecord
  belongs_to :caracteristique
  has_many:ressources

end
