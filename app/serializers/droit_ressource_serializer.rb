class DroitRessourceSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :creer, :lire, :modifier, :supprimer
end
