ActiveAdmin.register Evenement do
  menu parent: "Evènements"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :date_debut, :date_fin, :heure_debut, :heure_fin, :lieu, :organisateur, :objectif, :cible, :description, :url, :thematique_id, :type_systeme_irrigue_id, :type_evenement_id, :profile_id, :unite_administrative_id
  #
  # or
  #
   permit_params do
     permitted = [:libelle, :date_debut, :date_fin, :heure_debut, :heure_fin, :lieu, :organisateur, :objectif, :cible, :description, :url, :thematique_id, :type_systeme_irrigue_id, :type_evenement_id, :profile_id, :unite_administrative_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
end
