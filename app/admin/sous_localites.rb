ActiveAdmin.register SousLocalite do
  menu parent: "Localisation"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :type_localite, 
                 :nom,
                 localite_localites_attributes: [:id, :localite_id, :sous_localite_id, :_destroy]
  

  #
  remove_filter :localite_localites,:localites

  index do
    selectable_column
    column :nom
    column :type_localite
    actions
   end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Veuillez remplir les champs' do
        f.input :nom
        f.input :type_localite
    
      end
  
        #f.input :published_at, label: 'Publish Post At'
      
        f.inputs 'Veuilez selectionner la  localite' do
          f.has_many:localite_localites,alloy_destroy:true do |a|
            a.input:localite,heading:"",collection: Localite.all.map { |m| [m.nom, m.id] }
          end 
        end
   
      f.actions
    


  end
  
end
