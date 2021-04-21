class LangueSerializer < ActiveModel::Serializer
  attributes :id,:code, :nom
  has_many :ressources
end
