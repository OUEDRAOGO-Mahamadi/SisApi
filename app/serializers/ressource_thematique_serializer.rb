class RessourceThematiqueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ressource
  has_one :thematique
end
