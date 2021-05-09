class Pjointe < ApplicationRecord
    has_many:ressource_pjointes
    has_many :ressources, :through => :ressource_pjointes,dependent: :delete_all
end
