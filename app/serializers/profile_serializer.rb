class ProfileSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :description
  has_many :ressources
  has_many :evenements
  has_many :utilisateurs
  belongs_to :droit_ressource
  belongs_to :droit_expert
  belongs_to :droit_evenement
end
