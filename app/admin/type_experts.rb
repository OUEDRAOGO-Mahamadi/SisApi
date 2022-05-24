ActiveAdmin.register TypeExpert do

  menu parent: "Comptes"
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
  
  remove_filter :type_sous_experts,:expert_sous_types
  preserve_default_filters! 
  filter :sous_type_experts, :collection => proc {(SousTypeExpert.all).map{|c| [c.libelle, c.id]}}

end
