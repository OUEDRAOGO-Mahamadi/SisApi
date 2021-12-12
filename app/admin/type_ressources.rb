ActiveAdmin.register TypeRessource do
  menu parent: "Gestion Ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :sigle, :description
  #
  # or
  #
   permit_params do
     permitted = [:libelle, :sigle, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
  remove_filter :ressource_sous_ressources,:type_sous_type_ressources

  preserve_default_filters! 
  filter :sous_type_ressources, :collection => proc {(SousTypeRessource.all).map{|c| [c.libelle, c.id]}}
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.libelle, c.id]}}
 
end
