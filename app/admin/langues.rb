ActiveAdmin.register Langue do
  menu parent: "Caracteristiques ressources"
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
  
end
