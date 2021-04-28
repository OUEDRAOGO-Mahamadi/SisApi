class TypeSystemeIrrigueCqSerializer < ActiveModel::Serializer
  attributes :id
  has_one :caracteristique
  has_one :type_systeme_irrigue
end
