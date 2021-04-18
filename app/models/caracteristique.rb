class Caracteristique < ApplicationRecord
   # belongs_to :type_systeme_irrigue
   has_many :type_systeme_irrigues
end
