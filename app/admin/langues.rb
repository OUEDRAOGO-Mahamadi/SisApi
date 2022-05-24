ActiveAdmin.register Langue do
  menu parent: "Critères ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :code, :nom
  #
  # or
  #
  permit_params do
    permitted = [:code, :nom]
   # permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

  remove_filter :ressource_langues,:utilisateur_langues,:evenement_langues

  preserve_default_filters! 
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.nom, c.id]}}
  filter :evenements, :collection => proc {(Evenement.all).map{|c| [c.libelle, c.id]}}
  filter :utilisateurs, :collection => proc {(Utilisateur.all).map{|c| [c.nom, c.id]}}
  
end
