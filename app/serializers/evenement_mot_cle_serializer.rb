class EvenementMotCleSerializer < ActiveModel::Serializer
  attributes :id
  has_one :mot_cle
  has_one :evenement
end
