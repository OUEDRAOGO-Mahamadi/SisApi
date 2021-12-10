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
  remove_filter :ressource_unite_administratives,:pays_unite_administratives,:evenement_unite_administratives
  preserve_default_filters! 
  filter :pays, :collection => proc {(Pay.all).map{|c| [c.nom, c.id]}}
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.libelle, c.id]}}
  filter :evenements, :collection => proc {(Evenement.all).map{|c| [c.libelle, c.id]}}

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
