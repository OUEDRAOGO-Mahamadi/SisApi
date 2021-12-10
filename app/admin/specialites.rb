ActiveAdmin.register Specialite do
  menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :code, :designation
  #
  # or
  #
   permit_params do
     permitted = [:code, :designation]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end


   preserve_default_filters! 
   filter :utilisateurs, :collection => proc {(Utilisateur.all).map{|c| [c.nom, c.id]}}

  
end
