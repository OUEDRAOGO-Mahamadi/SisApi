ActiveAdmin.register Caracteristique do
  menu parent: "Systemes Irrigués"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :libelle, :sigle, :description, :valeur
  #
  # or
  #
  permit_params do
    permitted = [:libelle, :sigle, :description, :valeur]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
   end
  
end
