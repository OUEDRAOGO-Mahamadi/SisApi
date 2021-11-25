ActiveAdmin.register SousTypeRessource do

  menu parent: "Gestion Ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :sigle, :description,
                          type_sous_type_ressources_attributes: [:id, :type_ressource_id, :sous_type_ressource_id, :_destroy]
  #
  # or
  #
  #  permit_params do
  #    permitted = [:libelle, :sigle, :description],
  #    type_sous_type_ressources_attributes: [:id, :type_ressource_id, :sous_type_ressource_id, :_destroy]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #    permitted
  #  end

   
  index do
    selectable_column
    column :libelle
    column :sigle
    column :description
    actions
   end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Veuillez remplir les champs' do
        f.input :libelle
        f.input :sigle
        f.input :description
    
      end
  
        #f.input :published_at, label: 'Publish Post At'
      
    f.inputs 'Veuilez selectionner le(s) type(s) de ressource' do
      f.has_many:type_sous_type_ressources,alloy_destroy:true do |a|
        a.input:type_ressource,heading:"",collection: TypeRessource.all.map { |m| [m.libelle, m.id] }
      end 
    end
   
      f.actions
    end
end
