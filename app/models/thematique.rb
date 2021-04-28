class Thematique < ApplicationRecord
  #belongs_to :thematique
  has_many:ressources
  has_many:evenements

  has_many :thematique_sous_thematiques

  accepts_nested_attributes_for:thematique_sous_thematiques,allow_destroy:true


  has_many :sous_thematiques, :through => :thematique_sous_thematiques,dependent: :delete_all
end
