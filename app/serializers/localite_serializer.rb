class LocaliteSerializer < ActiveModel::Serializer
  attributes :id, :type_localite, :nom
  has_many:sous_localites
  has_many:regions
end
