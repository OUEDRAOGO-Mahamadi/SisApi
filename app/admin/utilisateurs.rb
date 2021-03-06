ActiveAdmin.register Utilisateur do

  menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  status=["ACTIVE","DESACTIVE"]

  permit_params :telephone, 
                :email, 
                :nom, 
                :prenom, 
                :fonction, 
                :password, 
                :status, 
                :adresse,
                :structure_id, 
                :type_expert_id, 
                :profile_id,
                utilisateur_specialites_attributes: [:id, :utilisateur_id, :specialite_id, :_destroy],
                expert_sous_types_attributes: [:id, :utilisateur_id, :sous_type_expert_id, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:telephone, :email, :nom, :prenom, :fonction, :password, :status, :structure_id, :specialite_id, :categorie_id, :profile_id]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  remove_filter :utilisateur_langues,:utilisateur_pays,:utilisateur_unite_administratives,
                :utilisateur_type_s_irrigues,:utilisateur_thematiques,:expert_sous_types,
                :utilisateur_specialites

  preserve_default_filters! 
  filter :structure, :collection => proc {(Structure.all).map{|c| [c.libelle, c.id]}}
  filter :type_expert, :collection => proc {(TypeExpert.all).map{|c| [c.libelle, c.id]}}
  filter :thematiques, :collection => proc {(Thematique.all).map{|c| [c.libelle, c.id]}}
  filter :profile, :collection => proc {(Profile.all).map{|c| [c.libelle, c.id]}}
  filter :type_systeme_irrigues, :collection => proc {(TypeSystemeIrrigue.all).map{|c| [c.libelle, c.id]}}
  filter :sous_type_experts, :collection => proc {(SousTypeExpert.all).map{|c| [c.libelle, c.id]}}
  filter :langues, :collection => proc {(Langue.all).map{|c| [c.nom, c.id]}}
  filter :pays, :collection => proc {(Pay.all).map{|c| [c.nom, c.id]}}
  filter :type_experts, :collection => proc {(TypeExpert.all).map{|c| [c.libelle, c.id]}}
  filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.nom, c.id]}}
  filter :profiles, :collection => proc {(Profile.all).map{|c| [c.libelle, c.id]}}
  filter :categorie, :collection => proc {(Categorie.all).map{|c| [c.libelle, c.id]}}
  filter :specialites, :collection => proc {(Specialite.all).map{|c| [c.code, c.id]}}


  index do
    selectable_column
    column :nom
    column :prenom
    column :adresse
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
      row :adresse
      row :telephone
      row :fonction
      row :password
      # row :structure do |t|
      #   t.structure.libelle
      # end
      row :profile do |t|
        t.profile.libelle
      end
      # row :specialites do |t|
      #   t.specialites.map{|bg| bg.code}.join(", ").html_safe
      # end
     
  
      row :status
      
        
    end
  end



  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'veuillez remplir le formulaire' do
      f.input :nom
      f.input :prenom
      f.input :email
      f.input :adresse
      f.input :telephone
      f.input :fonction
      f.input :password
      f.input :status, :as => :select, :collection => status.map{|u| [u, u]}
     
    end
    f.inputs 'Veuilez selectionner la structure' do
      f.input :structure,collection: Structure.all.map { |m| [m.libelle, m.id] }
    end
    # f.inputs 'Veuilez selectionner la categorie' do
    #   f.input :categorie,collection: Categorie.all.map { |m| [m.libelle, m.id] }
    # end
    f.inputs 'Veuilez selectionner le profile' do
      f.input :profile,collection: Profile.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner le type d expert' do
      f.input :type_expert,collection: TypeExpert.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner la(s) sp??cialit??(s)' do  
      f.has_many:utilisateur_specialites,heading:"",alloy_destroy:true do |a|
        a.input:specialite,collection: Specialite.all.map { |m| [m.code, m.id] }
      end 
    end
    f.inputs 'Veuilez selectionner le(s) sous type(s) d expert' do  
      f.has_many:expert_sous_types,heading:"",alloy_destroy:true do |a|
        a.input:sous_type_expert,collection: SousTypeExpert.all.map { |m| [m.libelle, m.id] }
      end 
    end
    f.actions
  end
  
end
