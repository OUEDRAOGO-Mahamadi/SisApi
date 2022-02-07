ActiveAdmin.register SousTypeExpert do

  menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :sigle, :description,
   type_sous_experts_attributes: [:id, :type_expert_id, :sous_type_expert_id, :_destroy]
  #
  # or
  #
  #  permit_params do
  #    permitted = [:libelle, :sigle, :description]
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

   show do |t|
    attributes_table do
      row :libelle
      row :sigle
      row :description
      
      row :type_experts do |t|
        t.type_experts.map{|bg| bg.libelle}.join(", ").html_safe
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Veuillez remplir les champs' do
        f.input :libelle
        f.input :sigle
        f.input :description
    
      end
  
        #f.input :published_at, label: 'Publish Post At'
      
    f.inputs 'Veuilez selectionner le(s) type(s) d expert' do
      f.has_many:type_sous_experts,alloy_destroy:true do |a|
        a.input:type_expert,heading:"",collection: TypeExpert.all.map { |m| [m.libelle, m.id] }
      end 
    end
   
      f.actions
    end
  
end
