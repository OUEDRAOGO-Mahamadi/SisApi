class Thematique < ApplicationRecord
  #belongs_to :thematique
  has_many:ressource_thematiques
  has_many :ressources, :through => :ressource_thematiques,dependent: :delete_all
  

  has_many:evenement_thematiques
  has_many :evenements, :through => :evenement_thematiques,dependent: :delete_all

  has_many :thematique_sous_thematiques

  has_many :utilisateur_thematiques

  accepts_nested_attributes_for:thematique_sous_thematiques,allow_destroy:true
  accepts_nested_attributes_for:utilisateur_thematiques,allow_destroy:true

  has_many :utilisateurs, :through => :utilisateur_thematiques,dependent: :delete_all

  has_many :sous_thematiques, :through => :thematique_sous_thematiques,dependent: :delete_all
end
