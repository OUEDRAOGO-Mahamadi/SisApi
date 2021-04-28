class Utilisateur < ApplicationRecord
  belongs_to :structure
  belongs_to :categorie
  belongs_to :profile
  has_many:ressources

  has_many :utilisateur_specialites
  
  accepts_nested_attributes_for:utilisateur_specialites,allow_destroy:true


  has_many :specialites, :through => :utilisateur_specialites,dependent: :delete_all
end
