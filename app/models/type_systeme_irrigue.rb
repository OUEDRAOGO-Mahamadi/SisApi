class TypeSystemeIrrigue < ApplicationRecord
  #belongs_to :caracteristique

  has_many:evenements
  has_many:ressources

  has_many:type_systeme_irrigue_cqs

  accepts_nested_attributes_for:type_systeme_irrigue_cqs,allow_destroy:true


  has_many :caracteristiques, :through => :type_systeme_irrigue_cqs,dependent: :delete_all

end
