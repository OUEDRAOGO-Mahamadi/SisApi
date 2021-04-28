class RessourceSerializer < ActiveModel::Serializer
  attributes :id,:nom, :date_creation, :derniere_date_maj, :date_debut_publication, :date_fin_publication, :statut, :video, :image, :description, :url
  has_many :langues
  belongs_to :utilisateur
  belongs_to :le_format
  has_many  :mot_cles 
  has_many :unite_administratives
  has_many  :thematiques
  has_many  :type_systeme_irrigues
  belongs_to  :type_ressource
  has_many  :profiles
end
