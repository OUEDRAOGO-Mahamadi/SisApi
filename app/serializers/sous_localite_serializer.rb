class SousLocaliteSerializer < ActiveModel::Serializer
  attributes :id, :type_localite, :nom
  has_many:localites
end
