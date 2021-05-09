class RegionSerializer < ActiveModel::Serializer
  attributes :id, :description, :nom
  has_many:localites
  has_many:pays
end
