ActiveAdmin.register UniteAdministrative do
  menu parent: "Localisation"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :code,
   pays_unite_administratives_attributes: [:id, :unite_administrative_id, :pay_id, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:libelle, :code],
  #   pays_unite_administratives_attributes: [:id, :unite_administrative_id, :pay_id, :_destroy]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  index do
    selectable_column
    column :libelle
    column :code
    actions
   end

   show do |t|
    attributes_table do
      row :libelle
      row :code
      row :created_at
      row :updated_at
      row :pays do |t|
        t.pays.map{|bg| bg.nom}.join(", ").html_safe
      end
    end
  end  

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Veuillez remplir les champs' do
        f.input :libelle
        f.input :code
        
    
      end
  
        #f.input :published_at, label: 'Publish Post At'
      
    f.inputs 'Veuilez selectionner le(s) pays cle' do
      f.has_many:pays_unite_administratives,alloy_destroy:true do |a|
        a.input:pay,heading:"",collection: Pay.all.map { |m| [m.nom, m.id] }
      end 
    end
   
      f.actions
  end
end
