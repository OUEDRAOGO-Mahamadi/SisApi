ActiveAdmin.register TypeSystemeIrrigue do
  menu parent: "Systemes Irrigués"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :sigle, :description, :caracteristique_id
  #
  # or
  #
   permit_params do
     permitted = [:libelle, :sigle, :description, :caracteristique_id]
     #permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
end
