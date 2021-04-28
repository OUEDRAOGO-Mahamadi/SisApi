class Evenement < ApplicationRecord
  belongs_to :type_evenement

  has_many :evenement_thematiques
  has_many :evenement_systeme_irrigues
  has_many :evenement_profiles
  has_many :evenement_unite_administratives

  accepts_nested_attributes_for:evenement_thematiques,allow_destroy:true
  accepts_nested_attributes_for:evenement_systeme_irrigues,allow_destroy:true
  accepts_nested_attributes_for:evenement_profiles,allow_destroy:true
  accepts_nested_attributes_for:evenement_unite_administratives,allow_destroy:true


  has_many :thematiques, :through => :evenement_thematiques,dependent: :delete_all
  has_many :type_systeme_irrigues, :through => :evenement_systeme_irrigues,dependent: :delete_all
  has_many :profiles, :through => :evenement_profiles,dependent: :delete_all
  has_many :unite_administratives, :through => :evenement_unite_administratives,dependent: :delete_all
end
