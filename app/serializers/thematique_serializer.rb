class ThematiqueSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :description #, :evenements
  # has_many :ressources
  # has_many :evenements
  has_many:sous_thematiques
  #has_many:utilisateurs
  
end
