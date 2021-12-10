ActiveAdmin.register TypeEvenement do
  menu parent: "Calendrier"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :libelle, :description
  #
  # or
  #
   permit_params do
     permitted = [:libelle, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
   preserve_default_filters! 
 
   filter :evenements, :collection => proc {(Evenement.all).map{|c| [c.libelle, c.id]}}
end
