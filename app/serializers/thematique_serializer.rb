class ThematiqueSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :description
  has_many :ressources
  has_many :evenements
  has_many:sous_thematiques
  
end
