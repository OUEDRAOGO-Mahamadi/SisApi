ActiveAdmin.register Pay do
  menu parent: "Localisation"
  #menu label: "Pays"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :code, 
                :nom,
                pays_regions_attributes: [:id, :pay_id, :region_id, :_destroy]
               
  #
  # or
  #
  # permit_params do
  #   permitted = [:code, :nom]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do |t|
    attributes_table do
      row :nom
      row :code
      row :created_at
      row :updated_at
      row :unite_administratives do |t|
        t.unite_administratives.map{|bg| bg.libelle}.join(", ").html_safe
      end
    end
  end 

  
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Veuillez remplir les champs' do
        f.input :code
        f.input :nom
    
      end
  
        #f.input :published_at, label: 'Publish Post At'
      
        # f.inputs 'Veuilez selectionner la(s) region(s) cle' do
        #   f.has_many:pays_regions,alloy_destroy:true do |a|
        #     a.input:region,heading:"",collection: Region.all.map { |m| [m.nom, m.id] }
        #   end 
        # end
   
      f.actions
    
  end
  
end
