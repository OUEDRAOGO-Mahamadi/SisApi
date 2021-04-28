class TypeSystemeIrrigue < ApplicationRecord
  #belongs_to :caracteristique

  has_many:ressource_systeme_irrigues
  has_many :ressources, :through => :ressource_systeme_irrigues,dependent: :delete_all
  

  has_many:evenement_systeme_irrigues
  has_many :evenements, :through => :evenement_systeme_irrigues,dependent: :delete_all

  has_many:type_systeme_irrigue_cqs

  accepts_nested_attributes_for:type_systeme_irrigue_cqs,allow_destroy:true


  has_many :caracteristiques, :through => :type_systeme_irrigue_cqs,dependent: :delete_all

end
