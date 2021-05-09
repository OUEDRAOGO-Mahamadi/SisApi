class RegionLocaliteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :localite
  has_one :region
end
