class UtilisateurSerializer < ActiveModel::Serializer
  attributes :id, :telephone, :langues, :created_at, :pays, :thematiques, :type_systeme_irrigues,
   :email, :nom, :prenom,:adresse, :fonction, :password, :status, :sous_type_experts,:type_expert
  belongs_to :structure
  belongs_to :type_expert
  belongs_to :profile
  has_many:specialites
  has_many:langues
  has_many:thematiques
  has_many:type_systeme_irrigues
  has_many:pays
  #has_many:ressources 
  has_many:sous_type_experts 
end
