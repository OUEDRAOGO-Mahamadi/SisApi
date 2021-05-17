class UtilisateurSerializer < ActiveModel::Serializer
  attributes :id,:telephone, :email, :nom, :prenom, :fonction, :password, :status
  belongs_to :structure
  belongs_to :categorie
  belongs_to :profile
  has_many:specialites
  has_many:ressources , serializer: RessourceSerializer
end
