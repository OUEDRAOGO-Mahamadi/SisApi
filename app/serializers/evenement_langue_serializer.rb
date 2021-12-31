class EvenementLangueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :langue
  has_one :evenement
end
