class UtilisateurSerializer < ActiveModel::Serializer
  attributes :id, :telephone, :langues, :created_at, :pays, :thematiques, :type_systeme_irrigues, :email, :nom, :prenom, :fonction, :password, :status
  belongs_to :structure
  belongs_to :categorie
  belongs_to :profile
  has_many:specialites
  has_many:langues
  has_many:thematiques
  has_many:type_systeme_irrigues
  has_many:pays
  has_many:ressources , serializer: RessourceSerializer
end
