class EvenementPaySerializer < ActiveModel::Serializer
  attributes :id
  has_one :pay
  has_one :evenement
end
