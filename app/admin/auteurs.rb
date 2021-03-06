ActiveAdmin.register Auteur do
  menu parent: "Critères ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nom
  #
  # or
  #
  # permit_params do
  #   permitted = [:nom]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  remove_filter :ressource_auteurs
  preserve_default_filters! 
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.nom, c.id]}}

  
end
