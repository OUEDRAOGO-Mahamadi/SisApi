class SousTypeExpertSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description, :utilisateurs
  has_many:utilisateurs
end
