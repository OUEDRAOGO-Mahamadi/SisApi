ActiveAdmin.register Region do
  menu parent: "Localisation"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description, 
                :nom,
                pays_regions_attributes: [:id, :region_id, :pay_id, :_destroy]
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
      
        f.inputs 'Veuilez selectionner le(s) pays cle' do
          f.has_many:pays_regions,alloy_destroy:true do |a|
            a.input:pay,heading:"",collection: Pay.all.map { |m| [m.nom, m.id] }
          end 
        end
   
      f.actions
    
  end
end
