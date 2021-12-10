ActiveAdmin.register Structure do
   menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :libelle, :sigle, :adresse, :telephone
  #
  # or
  #
  permit_params do
     permitted = [:libelle, :sigle, :adresse, :telephone]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
   preserve_default_filters! 
   filter :utilisateurs, :collection => proc {(Utilisateur.all).map{|c| [c.nom, c.id]}}
end
