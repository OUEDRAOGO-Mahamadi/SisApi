class Evenement < ApplicationRecord
  belongs_to :type_evenement

  has_many :evenement_thematiques
  has_many :evenement_systeme_irrigues
  has_many :evenement_profiles
  has_many :evenement_unite_administratives
  has_many :evenement_langues
  has_many :evenement_pays
  has_many :evenement_mot_cles

  accepts_nested_attributes_for:evenement_mot_cles,allow_destroy:true
  accepts_nested_attributes_for:evenement_thematiques,allow_destroy:true
  accepts_nested_attributes_for:evenement_systeme_irrigues,allow_destroy:true
  accepts_nested_attributes_for:evenement_profiles,allow_destroy:true
  accepts_nested_attributes_for:evenement_unite_administratives,allow_destroy:true

  accepts_nested_attributes_for:evenement_langues,allow_destroy:true
  accepts_nested_attributes_for:evenement_pays,allow_destroy:true


  has_many :thematiques, :through => :evenement_thematiques,dependent: :delete_all
  has_many :mot_cles, :through => :evenement_mot_cles,dependent: :delete_all
  has_many :type_systeme_irrigues, :through => :evenement_systeme_irrigues,dependent: :delete_all
  has_many :profiles, :through => :evenement_profiles,dependent: :delete_all
  has_many :unite_administratives, :through => :evenement_unite_administratives,dependent: :delete_all
  has_many :pays, :through => :evenement_pays,dependent: :delete_all
  has_many :langues, :through => :evenement_langues,dependent: :delete_all

    #scopes
  scope :filter_langue,-> (array_ids) { joins(:evenement_langues).where("evenement_langues.evenement_id = evenements.id AND ressource_langues.langue_id IN (?)",array_ids) }
  scope :filter_pays,-> (array_ids) { joins(:evenement_pays).where("evenement_pays.ressource_id = evenements.id AND evenement_pays.pay_id IN (?)",array_ids) }
  scope :filter_unite_administrative,-> (array_ids) { joins(:evenement_unite_administratives).where("evenement_unite_administratives.evenement_id = evenements.id AND evenement_unite_administratives.unite_administrative_id IN (?)",array_ids) }
  scope :filter_mot_cle,-> (array_ids) { joins(:evenement_mot_cles).where("evenement_mot_cles.evenement_id = evenements.id AND evenement_mot_cles.mot_cle_id IN (?)",array_ids) }
  scope :filter_thematique,-> (array_ids) { joins(:evenement_thematiques).where("evenement_thematiques.evenement_id = evenements.id AND evenement_thematiques.thematique_id IN (?)",array_ids) }
  scope :filter_systeme_irrigue,-> (array_ids) { joins(:evenement_systeme_irrigues).where("evenement_systeme_irrigues.evenement_id = evenements.id AND evenement_systeme_irrigues.type_systeme_irrigue_id IN (?)",array_ids) }
  scope :filter_profile,-> (profile_id) {joins(:evenement_profiles).where("evenement_profiles.evenement_id=evenements.id AND evenement_profiles.profile_id = ?",profile_id)}
  scope :filter_type_evenement,-> (array_ids) { where("evenements.type_evenement_id IN (?)",array_ids) }





end
