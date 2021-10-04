class RessourceSerializer < ActiveModel::Serializer
  attributes :id,:nom, :nombre_vue,  
  :nombre_telecharge, :date_debut_publication,
  :profiles, :date_fin_publication, :statut, :derniere_date_consulte ,
  :video, :description, :url

  has_many :langues
  belongs_to :utilisateur
  belongs_to :le_format
  has_many  :mot_cles 
  has_many :unite_administratives
  has_many  :thematiques
  has_many  :type_systeme_irrigues
  belongs_to  :type_ressource
  has_many  :profiles
  has_many  :images
  has_many  :pjointes
  has_many  :pays
end
