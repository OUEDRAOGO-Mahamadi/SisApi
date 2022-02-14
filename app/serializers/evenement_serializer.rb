class EvenementSerializer < ActiveModel::Serializer
  attributes  :id,
              :libelle,
              :date_debut, 
              :date_fin, 
              :heure_debut, 
              :heure_fin, 
              :lieu, 
              :organisateur, 
              :objectif, 
              :cible,                 
              :description, 
              :url
              

  has_many :unite_administratives
  has_many  :thematiques
  has_many  :langues
  has_many  :pays
  has_many  :type_systeme_irrigues
  belongs_to  :type_evenement
  has_many  :profiles            
end
