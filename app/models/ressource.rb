class Ressource < ApplicationRecord
  belongs_to :format
  #belongs_to :langue
  #belongs_to :mot_cle
  belongs_to :utilisateur
  #belongs_to :unite_administrative
  belongs_to :thematique
  #belongs_to :type_systeme_irrigue
  belongs_to :type_ressource
  #belongs_to :profile

  has_many :ressource_profiles
  has_many :ressource_mot_cles
  has_many :ressource_langues
  has_many :ressource_systeme_irrigues
  has_many :ressource_unite_administratives

  has_many :profiles, :through => :ressource_profiles,dependent: :delete_all
  has_many :mot_cles, :through => :ressource_mot_cles,dependent: :delete_all
  has_many :langues, :through => :ressource_langues,dependent: :delete_all
  has_many :type_systeme_irrigues, :through => :ressource_systeme_irrigues,dependent: :delete_all
  has_many :unite_administratives, :through => :ressource_unite_administratives,dependent: :delete_all
end
