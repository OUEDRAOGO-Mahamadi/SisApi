class EvenementSystemeIrrigueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :evenement
  has_one :type_systeme_irrigue
end
