class ProfileSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :description
  has_many :ressources
end
