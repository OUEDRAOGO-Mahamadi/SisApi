ActiveAdmin.register Profile do
  menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :description
  #
  # or
  #
   permit_params do
     permitted = [:libelle, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
   remove_filter :profile_ressources,:evenement_profiles,:ressource_profiles

   preserve_default_filters! 
   filter :utilisateurs, :collection => proc {(Utilisateur.all).map{|c| [c.nom, c.id]}}
   filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.libelle, c.id]}}
   filter :evenements, :collection => proc {(Evenement.all).map{|c| [c.libelle, c.id]}}
end
