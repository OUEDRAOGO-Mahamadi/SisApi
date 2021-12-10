ActiveAdmin.register TypeSystemeIrrigue do
  menu parent: "Systemes Irrigués"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle,
                 :sigle,
                 :description,
                 type_systeme_irrigue_cqs_attributes: [:id, :caracteristique_id, :type_systeme_irrigue_id, :_destroy]
  #
  remove_filter :ressource_systeme_irrigues,:ressources,:evenement_systeme_irrigues,:evenements,:type_systeme_irrigue_cqs,
                :caracteristiques

  show do |t|
    attributes_table do
      row :libelle
      row :sigle
      row :description
      row :caracteristiques do |t|
        t.caracteristiques.map{|bg| bg.libelle}.join(", ").html_safe
      end
 
      
        
    end
  end


   form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Details' do
      f.input :libelle
      f.input :sigle
      f.input :description
    end
    f.inputs 'Veuilez selectionner la(s) caracteristique(s)' do  
      f.has_many:type_systeme_irrigue_cqs,alloy_destroy:true do |a|
        a.input:caracteristique,heading:"",collection: Caracteristique.all.map { |m| [m.libelle, m.id] }
      end 
    end
    f.actions
  end
  
end
