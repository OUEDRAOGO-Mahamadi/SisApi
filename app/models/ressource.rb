class Ressource < ApplicationRecord
  belongs_to :le_format
  #belongs_to :langue
  #belongs_to :mot_cle
  belongs_to :utilisateur
  #belongs_to :unite_administrative

  #belongs_to :type_systeme_irrigue
  belongs_to :type_ressource
  #belongs_to :profile

  has_many :ressource_profiles
  has_many :ressource_mot_cles
  has_many :ressource_langues
  has_many :ressource_auteurs
  has_many :ressource_systeme_irrigues
  has_many :ressource_unite_administratives
  has_many :ressource_thematiques
  has_many:ressource_imgs
  has_many:ressource_pjointes
  has_many:ressource_pays
  has_many:ressource_sous_ressources
   
  accepts_nested_attributes_for:ressource_auteurs,allow_destroy:true
  accepts_nested_attributes_for:ressource_mot_cles,allow_destroy:true
  accepts_nested_attributes_for:ressource_profiles,allow_destroy:true
  accepts_nested_attributes_for:ressource_langues,allow_destroy:true
  accepts_nested_attributes_for:ressource_systeme_irrigues,allow_destroy:true
  accepts_nested_attributes_for:ressource_unite_administratives,allow_destroy:true
  accepts_nested_attributes_for:ressource_thematiques,allow_destroy:true
  accepts_nested_attributes_for:ressource_pjointes,allow_destroy:true
  accepts_nested_attributes_for:ressource_imgs,allow_destroy:true
  accepts_nested_attributes_for:ressource_pays,allow_destroy:true
  accepts_nested_attributes_for:ressource_sous_ressources,allow_destroy:true

  has_many :sous_type_ressources, :through => :ressource_sous_ressources,dependent: :delete_all
  has_many :thematiques, :through => :ressource_thematiques,dependent: :delete_all
  has_many :profiles, :through => :ressource_profiles,dependent: :delete_all
  has_many :mot_cles, :through => :ressource_mot_cles,dependent: :delete_all
  has_many :auteurs, :through => :ressource_auteurs,dependent: :delete_all
  has_many :langues, :through => :ressource_langues,dependent: :delete_all
  has_many :type_systeme_irrigues, :through => :ressource_systeme_irrigues,dependent: :delete_all
  has_many :unite_administratives, :through => :ressource_unite_administratives,dependent: :delete_all
  has_many :images, :through => :ressource_imgs,dependent: :delete_all
  has_many :pjointes, :through => :ressource_pjointes,dependent: :delete_all
  has_many :pays, :through => :ressource_pays,dependent: :delete_all
end
