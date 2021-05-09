ActiveAdmin.register Region do
  menu parent: "Localisation"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description, 
                :nom,
                region_localites_attributes: [:id, :region_id, :localite_id, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :nom]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column :nom
    column :description
    actions
   end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Veuillez remplir les champs' do
        f.input :nom
        f.input :description
    
      end
  
        #f.input :published_at, label: 'Publish Post At'
      
        f.inputs 'Veuilez selectionner le(s) sous localite(s) cle' do
          f.has_many:region_localites,alloy_destroy:true do |a|
            a.input:localite,heading:"",collection: Localite.all.map { |m| [m.nom, m.id] }
          end 
        end
   
      f.actions
    
  end
end
