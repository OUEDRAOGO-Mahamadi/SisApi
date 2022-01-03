class LangueSerializer < ActiveModel::Serializer
  attributes :id,:code, :nom
  has_many :ressources
  has_many:utilisateurs
end
