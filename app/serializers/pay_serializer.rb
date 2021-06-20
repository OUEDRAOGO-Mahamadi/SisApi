class PaySerializer < ActiveModel::Serializer
  attributes :id, :code, :nom
  has_many:regions
  has_many:ressources
end
