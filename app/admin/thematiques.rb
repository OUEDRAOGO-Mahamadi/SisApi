ActiveAdmin.register Thematique do
  menu parent: "Gestion Thématiques"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle,
                 :description,
                 thematique_sous_thematiques_attributes: [:id, :sous_thematique_id, :thematique_id, :_destroy]
  #
  # or
  #
  #  permit_params do
  #    permitted = [:libelle, :description, :thematique_id]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #    permitted
  #  end


   show do |t|
    attributes_table do
      row :libelle
      row :description
      row :sous_thematiques do |t|
        t.sous_thematiques.map{|bg| bg.libelle}.join(", ").html_safe
      end
 
      
        
    end
  end

   form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Details' do
      f.input :libelle
      f.input :description
    end
    f.inputs 'Veuilez selectionner la(s) sous-thematique(s)' do  
      f.has_many:thematique_sous_thematiques,alloy_destroy:true do |a|
        a.input:sous_thematique,heading:"",collection: SousThematique.all.map { |m| [m.libelle, m.id] }
      end 
    end
  
    f.actions
  end
  
end
