class Langue < ApplicationRecord
    has_many:ressource_langues
    has_many :ressources, :through => :ressource_langues,dependent: :delete_all
end
