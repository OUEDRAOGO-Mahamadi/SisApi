class FormatRessourceSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :code
  has_many :ressources
end
