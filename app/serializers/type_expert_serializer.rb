class TypeExpertSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description, :sous_type_experts

  # has_many :utilisateurs
  has_many :sous_type_experts

end
