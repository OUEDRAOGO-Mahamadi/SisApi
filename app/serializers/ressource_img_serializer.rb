class RessourceImgSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ressource
  has_one :image
end
