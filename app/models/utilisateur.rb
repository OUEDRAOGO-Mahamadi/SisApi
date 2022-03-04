class Utilisateur < ApplicationRecord
  belongs_to :structure, optional: true
  belongs_to :categorie, optional: true
  belongs_to :type_expert, optional: true
  belongs_to :profile
  has_many:ressources
  has_many:expert_sous_types

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
  
  accepts_nested_attributes_for:expert_sous_types,allow_destroy:true

  has_many :pays, :through => :utilisateur_pays,dependent: :delete_all
  has_many :langues, :through => :utilisateur_langues,dependent: :delete_all
  has_many :type_systeme_irrigues, :through => :utilisateur_type_s_irrigues,dependent: :delete_all
  has_many :thematiques, :through => :utilisateur_thematiques,dependent: :delete_all
  has_many :langues, :through => :utilisateur_langues,dependent: :delete_all
  has_many :specialites, :through => :utilisateur_specialites,dependent: :delete_all
  has_many :sous_type_experts, :through => :expert_sous_types,dependent: :delete_all


  #scopes
  scope :filter_langue,-> (array_ids) { joins(:utilisateur_langues).where("utilisateur_langues.utilisateur_id = utilisateurs.id AND utilisateur_langues.langue_id IN (?)",array_ids) }
  scope :filter_pays,-> (array_ids) { joins(:utilisateur_pays).where("utilisateur_pays.utilisateur_id = utilisateurs.id AND utilisateur_pays.pay_id IN (?)",array_ids) }
  scope :filter_thematique,-> (array_ids) { joins(:utilisateur_thematiques).where("utilisateur_thematiques.utilisateur_id = utilisateurs.id AND utilisateur_thematiques.thematique_id IN (?)",array_ids) }
  scope :filter_systeme_irrigue,-> (array_ids) { joins(:utilisateur_type_s_irrigues).where("utilisateur_type_s_irrigues.utilisateur_id = utilisateurs.id AND utilisateur_type_s_irrigues.type_systeme_irrigue_id IN (?)",array_ids) }
  scope :filter_profile,-> (profile_id) {where("utilisateurs.profile_id = ?",profile_id)}
  scope :filter_type_expert,-> (array_ids) { where("utilisateurs.type_expert_id IN (?)",array_ids) }




end
