class Utilisateur < ApplicationRecord
  belongs_to :structure
  belongs_to :categorie
  belongs_to :profile
  has_many:ressources

  has_many :utilisateur_specialites
  has_many:utilisateur_pays
  has_many:utilisateur_type_s_irrigues
  has_many:utilisateur_thematiques
  has_many:utilisateur_langues
  
  accepts_nested_attributes_for:utilisateur_pays,allow_destroy:true
  accepts_nested_attributes_for:utilisateur_langues,allow_destroy:true
  accepts_nested_attributes_for:utilisateur_type_s_irrigues,allow_destroy:true
  accepts_nested_attributes_for:utilisateur_thematiques,allow_destroy:true
  accepts_nested_attributes_for:utilisateur_langues,allow_destroy:true

  accepts_nested_attributes_for:utilisateur_specialites,allow_destroy:true

  has_many :pays, :through => :utilisateur_pays,dependent: :delete_all
  has_many :langues, :through => :utilisateur_langues,dependent: :delete_all
  has_many :type_systeme_irrigues, :through => :utilisateur_type_s_irrigues,dependent: :delete_all
  has_many :thematiques, :through => :utilisateur_thematiques,dependent: :delete_all
  has_many :langues, :through => :utilisateur_langues,dependent: :delete_all
  has_many :specialites, :through => :utilisateur_specialites,dependent: :delete_all
end
