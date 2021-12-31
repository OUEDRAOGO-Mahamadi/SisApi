class UtilisateurPaySerializer < ActiveModel::Serializer
  attributes :id
  has_one :pay
  has_one :utilisateur
end
