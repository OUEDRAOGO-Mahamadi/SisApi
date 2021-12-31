class UtilisateurThematiqueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :thematique
  has_one :utilisateur
end
