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
  has_many:ressource_votes
   
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
  accepts_nested_attributes_for:ressource_votes,allow_destroy:true

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
  has_many :votes, :through => :ressource_votes,dependent: :delete_all


  #scopes
  scope :filter_langue,-> (array_ids) { joins(:ressource_langues).where("ressource_langues.ressource_id = ressources.id AND ressource_langues.langue_id IN (?)",array_ids) }
  scope :filter_pays,-> (array_ids) { joins(:ressource_pays).where("ressource_pays.ressource_id = ressources.id AND ressource_pays.pay_id IN (?)",array_ids) }
  scope :filter_ressource_sous,-> (array_ids) { joins(:ressource_sous_ressources).where("ressource_sous_ressources.ressource_id = ressources.id AND ressource_sous_ressources.sous_type_ressource_id IN (?)",array_ids) }
  scope :filter_unite_administrative,-> (array_ids) { joins(:ressource_unite_administratives).where("ressource_unite_administratives.ressource_id = ressources.id AND ressource_unite_administratives.unite_administrative_id IN (?)",array_ids) }
  scope :filter_mot_cle,-> (array_ids) { joins(:ressource_mot_cles).where("ressource_mot_cles.ressource_id = ressources.id AND ressource_mot_cles.mot_cle_id IN (?)",array_ids) }
  scope :filter_auteur,-> (array_ids) { joins(:ressource_auteurs).where("ressource_auteurs.ressource_id = ressources.id AND ressource_auteurs.auteur_id IN (?)",array_ids) }
  scope :filter_thematique,-> (array_ids) { joins(:ressource_thematiques).where("ressource_thematiques.ressource_id = ressources.id AND ressource_thematiques.thematique_id IN (?)",array_ids) }
  scope :filter_systeme_irrigue,-> (array_ids) { joins(:ressource_systeme_irrigues).where("ressource_systeme_irrigues.ressource_id = ressources.id AND ressource_systeme_irrigues.type_systeme_irrigue_id IN (?)",array_ids) }
  scope :filter_profile,-> (array_ids) {joins(:ressource_profiles).where("ressource_profiles.ressource_id=ressources.id AND ressource_profiles.profile_id IN (?)",array_ids)}
  scope :filter_type_ressource,-> (array_ids) { where("ressources.type_ressource_id IN (?)",array_ids) }
  scope :filter_format,-> (array_ids) { where("ressources.le_format_id IN (?)",array_ids) }
  scope :filter_date,-> (date1,date2) { where("ressources.date_edition >= ? AND ressources.date_edition <= ? ",date1,date2) }


end
