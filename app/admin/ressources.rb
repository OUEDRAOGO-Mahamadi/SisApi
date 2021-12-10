ActiveAdmin.register Ressource do
  menu parent: "Gestion Ressources"
  actions :index, :show,:destroy, :edit, :update

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  status=["ACTIF","INACTIF"]
  
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
                 :pj,
                 :le_format_id,
                 #:langue_id,
                 #:mot_cle_id,
                 :utilisateur_id,
                 #:unite_administrative_id,
                 :thematique_id,
                # :type_systeme_irrigue_id,
                 :type_ressource_id,
                 #:profile_id,
                 ressource_mot_cles_attributes: [:id, :ressource_id, :mot_cle_id, :_destroy],
                 ressource_langues_attributes: [:id,:langue_id, :ressource_id,:_destroy],
                 ressource_unite_administratives_attributes: [:id, :ressource_id, :unite_administrative_id, :_destroy],
                 ressource_profiles_attributes: [:id, :ressource_id, :profile_id, :_destroy],
                 ressource_systeme_irrigues_attributes: [:id, :ressource_id, :type_systeme_irrigue_id, :_destroy],
                 ressource_thematiques_attributes: [:id, :ressource_id, :thematique_id, :_destroy],
                 ressource_pays_attributes: [:id, :ressource_id, :pay_id, :_destroy],
                 ressource_sous_ressources_attributes: [:id, :ressource_id, :sous_type_ressource_id, :_destroy]
          
                 
      remove_filter :ressource_profiles,:ressource_mot_cles,:ressource_profiles,:ressource_langues,:ressource_auteurs,
                    :ressource_systeme_irrigues,:ressource_pjointes,:ressource_imgs,:ressource_thematiques,
                    :ressource_unite_administratives,:ressource_pays,:ressource_sous_ressources,:pjointes,:images,
                    :le_format,:type_ressource

      preserve_default_filters! 
      filter :utilisateurs, :collection => proc {(Utilisateur.all).map{|c| [c.nom, c.id]}}
      filter :sous_type_ressources, :collection => proc {(SousTypeRessource.all).map{|c| [c.libelle, c.id]}}
      filter :thematiques, :collection => proc {(Thematique.all).map{|c| [c.libelle, c.id]}}
      filter :profiles, :collection => proc {(Profile.all).map{|c| [c.libelle, c.id]}}
      filter :mot_cles, :collection => proc {(MotCle.all).map{|c| [c.libelle, c.id]}}
      filter :auteurs, :collection => proc {(Auteur.all).map{|c| [c.nom, c.id]}}
      filter :pays, :collection => proc {(Pay.all).map{|c| [c.nom, c.id]}}
      filter :langues, :collection => proc {(Langue.all).map{|c| [c.nom, c.id]}}
      filter :unite_administratives, :collection => proc {(UniteAdministrative.all).map{|c| [c.libelle, c.id]}}
      filter :type_systeme_irrigues, :collection => proc {(TypeSystemeIrrigue.all).map{|c| [c.libelle, c.id]}}
                 




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
      row :date_debut_publication
      row :date_fin_publication
      row :date_edition
      row :statut
      row :video
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
      row :sous_type_ressources do |t|
        t.sous_type_ressources.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :type_systeme_irrigues do |t|
        t.type_systeme_irrigues.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :profiles do |t|
        t.profiles.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :thematiques do |t|
        t.thematiques.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :pays do |t|
        t.pays.map{|bg| bg.nom}.join(", ").html_safe
      end
      row :utilisateur
      
      row :le_format do |t|
        t.le_format.code
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
      
      #f.input :date_creation, as: :datepicker, datepicker_options: { date_format: "dd/mm/yy", min_date: Time.to_s + "+7D" }
      #f.input :derniere_date_maj, as: :datepicker, datepicker_options: { date_format: "dd/mm/yy", min_date: Time.to_s + "+7D" }
      f.input :date_edition, as: :datepicker
      f.input :date_debut_publication, as: :datepicker #, datepicker_options: { date_format: "dd/mm/yy", min_date: Time.to_s + "+7D" }
      f.input :date_fin_publication, as: :datepicker #, datepicker_options: { date_format: "dd/mm/yy", min_date: Time.to_s + "+7D" }
      f.input :statut, :as => :select, :collection => status.map{|u| [u, u]}
      f.input :video
      f.input :url
      f.input :description
    end
    f.inputs 'Veuilez selectionner l"utilisateur' do
      f.input :utilisateur, collection: Utilisateur.all.map { |m| [m.nom + ' - ' + m.email, m.id] }
    end
    f.inputs 'Veuilez selectionner le format ' do
      f.input :le_format,collection: LeFormat.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner le type de type' do  
      f.input :type_ressource,collection: TypeRessource.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner la(s) thematique(s)' do  
      f.has_many:ressource_thematiques,alloy_destroy:true do |a|
        a.input:thematique,collection: Thematique.all.map { |m| [m.libelle, m.id] }
      end 
    end
      #f.input :published_at, label: 'Publish Post At'
      f.inputs 'Veuilez selectionner la(s) localité(s)' do
        f.has_many:ressource_pays,alloy_destroy:true do |a|
          a.input:pay,heading:"",collection: Pay.all.map { |m| [m.nom, m.id] }
        end 
      end
    
      f.inputs 'Veuilez selectionner le(s) mot(s) cle' do
        f.has_many:ressource_mot_cles,alloy_destroy:true do |a|
          a.input:mot_cle,heading:"",collection: MotCle.all.map { |m| [m.libelle, m.id] }
        end 
      end
      f.inputs 'Veuilez selectionner la (s) langue(s)' do
        f.has_many:ressource_langues do |b|
          b.input:langue,heading:"",collection: Langue.all.map { |m| [m.nom, m.id] }
          # b.input :langue_id, as: :select,  collection: Langue.all.map {|u| [u.nom.to_s, u.id]} 
          # b.input :_destroy, :as=>:boolean, :required => false, :label => 'supprimer langue'
        end 
      end
     f.inputs 'Veuilez selectionner l(s) unite(s) administrative()' do
        f.has_many:ressource_unite_administratives,alloy_destroy:true do |c|
          c.input:unite_administrative,heading:"",collection: UniteAdministrative.all.map { |m| [m.libelle, m.id] }
        end
      end 
     f.inputs 'Veuilez selectionner l(s) profile(s)' do   
        f.has_many:ressource_profiles,alloy_destroy:true do |d|
          d.input:profile,heading:"",collection: Profile.all.map { |m| [m.libelle, m.id] }
        end
      end 
     f.inputs 'Veuilez selectionner l(s) type(s) de systeme irrigué(s)' do    
        f.has_many:ressource_systeme_irrigues,alloy_destroy:true do |e|
          e.input:type_systeme_irrigue,heading:"",collection: TypeSystemeIrrigue.all.map { |m| [m.libelle, m.id] }
        end
      end 
    f.actions
  
end
end