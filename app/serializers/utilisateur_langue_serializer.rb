class UtilisateurLangueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :langue
  has_one :utilisateur
end
