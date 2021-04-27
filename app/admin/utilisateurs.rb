ActiveAdmin.register Utilisateur do

  menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :telephone, :email, :nom, :prenom, :fonction, :password, :status, :structure_id, :specialite_id, :categorie_id, :profile_id
  #
  # or
  #
  permit_params do
    permitted = [:telephone, :email, :nom, :prenom, :fonction, :password, :status, :structure_id, :specialite_id, :categorie_id, :profile_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Details' do
      f.input :nom
      f.input :prenom
      f.input :email
      f.input :telephone
      f.input :fonction
      f.input :password
      f.input :status
    end
    f.inputs 'Details' do
      f.input :structure,collection: Structure.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Details' do
      f.input :specialite,collection: Specialite.all.map { |m| [m.code, m.id] }
    end
    f.inputs 'Details' do
      f.input :categorie,collection: Categorie.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Details' do
      f.input :profile,collection: Profile.all.map { |m| [m.libelle, m.id] }
    end
    f.actions
  end
  
end
