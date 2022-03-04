class LangueSerializer < ActiveModel::Serializer
  attributes :id,:code, :nom#, :evenements
  # has_many :ressources
  #has_many:utilisateurs
  # has_many :evenements
end
