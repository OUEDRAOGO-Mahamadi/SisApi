ActiveAdmin.register Ressource do
  menu parent: "Ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :nom, :date_creation, :derniere_date_maj, :date_debut_publication, :date_fin_publication, :statut, :video, :image, :description, :url, :format_id, :langue_id, :mot_cle_id, :utilisateur_id, :unite_administrative_id, :thematique_id, :type_systeme_irrigue_id, :type_ressource_id, :profile_id
  #
  # or
  #
   permit_params do
     permitted = [:nom, :date_creation, :derniere_date_maj, :date_debut_publication, :date_fin_publication, :statut, :video, :image, :description, :url, :format_id, :langue_id, :mot_cle_id, :utilisateur_id, :unite_administrative_id, :thematique_id, :type_systeme_irrigue_id, :type_ressource_id, :profile_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
end
