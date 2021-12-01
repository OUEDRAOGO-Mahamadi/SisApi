class AuteurSerializer < ActiveModel::Serializer
  attributes :id, :nom

  has_many :ressources
end
