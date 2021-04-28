class ThematiqueSousThematiqueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :thematique
  has_one :sous_thematique
end
