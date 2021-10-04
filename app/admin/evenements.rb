ActiveAdmin.register Evenement do
  menu parent: "Calendrier"

  actions :index, :show,:destroy, :edit, :update
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle,
                 :date_debut,
                 :date_fin,
                 :heure_debut,
                 :heure_fin, 
                 :lieu, 
                 :organisateur, 
                 :objectif, 
                 :cible, 
                 :description, 
                 :url, 
                 :type_evenement_id, 
                 evenement_unite_administratives_attributes: [:id, :evenement_id, :unite_administrative_id, :_destroy],
                 evenement_profiles_attributes: [:id, :evenement_id, :profile_id, :_destroy],
                 evenement_systeme_irrigues_attributes: [:id, :evenement_id, :type_systeme_irrigue_id, :_destroy],
                 evenement_thematiques_attributes: [:id, :evenement_id, :thematique_id, :_destroy]
  #
  # or
  #
  #  permit_params do
  #    permitted = [:libelle, :date_debut, :date_fin, :heure_debut, :heure_fin, :lieu, :organisateur, :objectif, :cible, :description, :url, :thematique_id, :type_systeme_irrigue_id, :type_evenement_id, :profile_id, :unite_administrative_id]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #    permitted
  #  end

  index do
    selectable_column
    column :libelle
    column :organisateur
    column :objectif
    column :cible
    actions
   end

   show do |t|
    attributes_table do
      row :libelle
      row :date_debut, as: :datepicker #, datepicker_options: { date_format: "dd/mm/yy", min_date: Time.to_s + "+7D" }
      row :date_fin, as: :datepicker #, datepicker_options: { date_format: "dd/mm/yy", min_date: Time.to_s + "+7D" }
      row :heure_debut
      row :heure_fin
      row :lieu
      row :organisateur
      row :objectif
      row :cible
      row :url
      row :description
      row :unite_administratives do |t|
        t.unite_administratives.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :profiles do |t|
        t.profiles.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :type_systeme_irrigues do |t|
        t.type_systeme_irrigues.map{|bg| bg.libelle}.join(", ").html_safe
      end
      row :thematiques do |t|
        t.thematiques.map{|bg| bg.libelle}.join(", ").html_safe
      end
     
  
      row :type_evenement do |t|
        t.type_evenement.libelle
      end
      
        
    end
  end

   form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Veuillez remplir les champs' do
        f.input :libelle
        f.input :date_debut
        f.input :date_fin
        f.input :heure_debut
        f.input :heure_fin
        f.input :lieu
        f.input :organisateur
        f.input :objectif
        f.input :cible
        f.input :url
        f.input :description
      end
      f.inputs 'Veuilez selectionner le type d"évènement' do
        f.input :type_evenement, collection: TypeEvenement.all.map { |m| [m.libelle, m.id] }
      end
    
      f.inputs 'Veuilez selectionner la(s) thematique(s)' do  
        f.has_many:evenement_unite_administratives,alloy_destroy:true do |a|
          a.input:unite_administrative,heading:"",collection: UniteAdministrative.all.map { |m| [m.libelle, m.id] }
        end 
      end
        #f.input :published_at, label: 'Publish Post At'
      
  
       f.inputs 'Veuilez selectionner l(s) unite(s) administrative()' do
          f.has_many:evenement_thematiques,alloy_destroy:true do |c|
            c.input:thematique,heading:"",collection: Thematique.all.map { |m| [m.libelle, m.id] }
          end
        end 
       f.inputs 'Veuilez selectionner l(s) profile(s)' do   
          f.has_many:evenement_profiles,alloy_destroy:true do |d|
            d.input:profile,heading:"",collection: Profile.all.map { |m| [m.libelle, m.id] }
          end
        end 
       f.inputs 'Veuilez selectionner l(s) type(s) de systeme irrigué(s)' do    
          f.has_many:evenement_systeme_irrigues,alloy_destroy:true do |e|
            e.input:type_systeme_irrigue,heading:"",collection: TypeSystemeIrrigue.all.map { |m| [m.libelle, m.id] }
          end
        end 
      f.actions 
    
  end
  
end
