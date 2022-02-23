ActiveAdmin.register TypeRessource do
  menu parent: "Gestion Ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #


  icons=["DOC_CARTOGRAPHIQUE_ICO",
           "AUTRE_ICO",
           "DOC_TYPE_ICO",
           "FORUM_ICO",
           "MANUEL_GUIDE_ICO",
           "OUTIL_CALCUL_ICO",
           "RAPPORT_ICO",
           "RESSOURCE_ICO"
          ]

   permit_params :libelle, :sigle,:icon, :description
  #
  # or
  #
   permit_params do
     permitted = [:libelle, :sigle,:icon, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
  remove_filter :ressource_sous_ressources,:type_sous_type_ressources

  preserve_default_filters! 
  filter :sous_type_ressources, :collection => proc {(SousTypeRessource.all).map{|c| [c.libelle, c.id]}}
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.nom, c.id]}}

  form do |f|
    f.semantic_errors *f.object.errors.keys
     f.inputs 'Veuillez remplir les champs' do
        f.input :libelle
        f.input :sigle
        f.input :icon, :as => :select, :collection => icons.map{|u| [u, u]}
        f.input :description
     end
     f.actions
    end      
    
  
end
