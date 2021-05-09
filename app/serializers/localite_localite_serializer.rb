class LocaliteLocaliteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :localite
  has_one :sous_localite
end
