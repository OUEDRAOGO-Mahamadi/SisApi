class TypeSousExpertSerializer < ActiveModel::Serializer
  attributes :id
  has_one :sous_type_expert
  has_one :type_expert
end
