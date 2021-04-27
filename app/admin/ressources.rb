ActiveAdmin.register Ressource do
  menu parent: "Ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :nom,
                 :date_creation,
                 :derniere_date_maj,
                 :date_debut_publication,
                 :date_fin_publication,
                 :statut,
                 :video,
                 :image,
                 :description,
                 :url,
                 :format_id,
                 #:langue_id,
                 #:mot_cle_id,
                 :utilisateur_id,
                 #:unite_administrative_id,
                 :thematique_id,
                # :type_systeme_irrigue_id,
                 :type_ressource_id,
                 #:profile_id,
                 ressource_mot_cles: [:id, :ressource_id, :mot_cle_id, :_destroy],
                 ressource_langues: [:id,:langue_id, :ressource_id,:_destroy],
                 ressource_unite_administratives: [:id, :ressource_id, :unite_administrative_id, :_destroy],
                 ressource_profiles: [:id, :ressource_id, :profile_id, :_destroy],
                 ressource_systeme_irrigues: [:id, :ressource_id, :type_systeme_irrigue_id, :_destroy]
                 
                 
  # #
  # # or
  # #
  #  permit_params do
  #    permitted = [:nom, :date_creation, :derniere_date_maj, :date_debut_publication, :date_fin_publication, :statut, :video, :image, :description, :url, :format_id, :langue_id, :mot_cle_id, :utilisateur_id, :unite_administrative_id, :thematique_id, :type_systeme_irrigue_id, :type_ressource_id, :profile_id]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #    permitted
  #  end

   index do
    selectable_column
    column :nom
    column :statut
    column :date_creation
    actions
   end

   show do |t|
    attributes_table do
      row :nom
      row :date_creation
      row :derniere_date_maj
      row :date_debut_publication
      row :date_fin_publication
      row :statut
      row :video
      row :image
      row :url
      row :description
      row :langues do |t|
        t.langues.map{|bg| bg.nom}.join(", ").html_safe
      end
      row :mot_cles do |t|
        t.mot_cles.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :unite_administratives do |t|
        t.unite_administratives.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :type_systeme_irrigues do |t|
        t.type_systeme_irrigues.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :profiles do |t|
        t.profiles.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :utilisateur
      
      row :format do |t|
        t.format.code
      end
      row :type_ressource do |t|
        t.type_ressource.libelle
      end
      
        
    end
  end
  
   form do |f|
  f.semantic_errors *f.object.errors.keys
  f.inputs 'Veuillez remplir les champs' do
      f.input :nom
      f.input :date_creation
      f.input :derniere_date_maj
      f.input :date_debut_publication
      f.input :date_fin_publication
      f.input :statut
      f.input :video
      f.input :image
      f.input :url
      f.input :description
    end
    f.inputs 'Veuilez selectionner l"utilisateur' do
      f.input :utilisateur, collection: Utilisateur.all.map { |m| [m.nom + ' - ' + m.email, m.id] }
    end
    f.inputs 'Veuilez selectionner le format ' do
      f.input :format,collection: Format.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner le type de type' do  
      f.input :type_ressource,collection: TypeRessource.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner la thematique' do  
      f.input :thematique,collection: Thematique.all.map { |m| [m.libelle, m.id] }
    end
      #f.input :published_at, label: 'Publish Post At'
    
      f.inputs 'Veuilez selectionner le(s) mot(s) cle' do
        f.has_many:ressource_mot_cles,alloy_destroy:true do |a|
          a.input:mot_cle,collection: MotCle.all.map { |m| [m.libelle, m.id] }
        end 
      end
      f.inputs 'Veuilez selectionner la (s) langue(s)' do
        f.has_many:ressource_langues,alloy_destroy:true do |b|
          b.input:langue,collection: Langue.all.map { |m| [m.nom, m.id] }
        end 
      end
     f.inputs 'Veuilez selectionner l(s) unite(s) administrative()' do
        f.has_many:ressource_unite_administratives,alloy_destroy:true do |c|
          c.input:unite_administrative,collection: UniteAdministrative.all.map { |m| [m.libelle, m.id] }
        end
      end 
     f.inputs 'Veuilez selectionner l(s) profile(s)' do   
        f.has_many:ressource_profiles,alloy_destroy:true do |d|
          d.input:profile,collection: Profile.all.map { |m| [m.libelle, m.id] }
        end
      end 
     f.inputs 'Veuilez selectionner l(s) type(s) de systeme irrigué(s)' do    
        f.has_many:ressource_systeme_irrigues,alloy_destroy:true do |e|
          e.input:type_systeme_irrigue,collection: TypeSystemeIrrigue.all.map { |m| [m.libelle, m.id] }
        end
      end 
    f.actions
  

end
end
