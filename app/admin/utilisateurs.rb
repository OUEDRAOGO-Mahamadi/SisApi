ActiveAdmin.register Utilisateur do

  menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :telephone, 
                :email, 
                :nom, 
                :prenom, 
                :fonction, 
                :password, 
                :status, 
                :structure_id, 
                :categorie_id, 
                :profile_id,
                utilisateur_specialites_attributes: [:id, :utilisateur_id, :specialite_id, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:telephone, :email, :nom, :prenom, :fonction, :password, :status, :structure_id, :specialite_id, :categorie_id, :profile_id]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column :nom
    column :prenom
    column :email
    column :telephone
    column :fonction
    actions
   end

   show do |t|
    attributes_table do
      row :nom
      row :prenom
      row :email
      row :telephone
      row :fonction
      row :password
      row :structure do |t|
        t.structure.libelle
      end
      row :profile do |t|
        t.profile.libelle
      end
      row :specialites do |t|
        t.specialites.map{|bg| bg.code}.join(", ").html_safe
      end
     
  
      row :status
      
        
    end
  end



  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'veuillez remplir le formulaire' do
      f.input :nom
      f.input :prenom
      f.input :email
      f.input :telephone
      f.input :fonction
      f.input :password
      f.input :status
    end
    f.inputs 'Veuilez selectionner la structure' do
      f.input :structure,collection: Structure.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner la categorie' do
      f.input :categorie,collection: Categorie.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner le profile' do
      f.input :profile,collection: Profile.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner la(s) spécialité(s)' do  
      f.has_many:utilisateur_specialites,heading:"",alloy_destroy:true do |a|
        a.input:specialite,collection: Specialite.all.map { |m| [m.code, m.id] }
      end 
    end
    f.actions
  end
  
end
