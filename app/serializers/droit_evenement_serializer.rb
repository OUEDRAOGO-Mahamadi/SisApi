class DroitEvenementSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :creer, :lire, :modifier, :supprimer
end
