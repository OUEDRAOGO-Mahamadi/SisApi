class TypeSystemeIrrigue < ApplicationRecord
  belongs_to :caracteristique

  has_many:ressource_systeme_irrigues
  has_many :ressources, :through => :ressource_systeme_irrigues,dependent: :delete_all

end
