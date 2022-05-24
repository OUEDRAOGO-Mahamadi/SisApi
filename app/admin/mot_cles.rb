ActiveAdmin.register MotCle do
  menu parent: "Critères ressources"

  #menu label: "Mots clés"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :libelle
  #
  # or
  #
  # permit_params do
  #   permitted = [:libelle]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  remove_filter :ressource_mot_cles,:evenement_mot_cles
  preserve_default_filters! 
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.nom, c.id]}}
  filter :evenements, :collection => proc {(Evenement.all).map{|c| [c.libelle, c.id]}}
 
  
end
