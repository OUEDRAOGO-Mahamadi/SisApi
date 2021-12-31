class UtilisateurTypeSIrrigueSerializer < ActiveModel::Serializer
  attributes :id
  has_one :type_systeme_irrigue
  has_one :utilisateur
end
