ActiveAdmin.register LeFormat do
  menu parent: "Critères ressources"

  #menu label: "Format"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :code, :libelle
  #
  # or
  #
  # permit_params do
  #   permitted = [:code, :libelle]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  preserve_default_filters! 
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.libelle, c.id]}}
  
end
