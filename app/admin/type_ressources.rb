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
  
end
