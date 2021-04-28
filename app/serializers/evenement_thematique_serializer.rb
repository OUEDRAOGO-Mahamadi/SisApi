class EvenementThematiqueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :evenement
  has_one :thematique
end
