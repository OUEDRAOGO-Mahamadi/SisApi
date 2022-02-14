ActiveAdmin.register Profile do
  menu parent: "Comptes"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, 
                 :description,
                 :droit_evenement_id, 
                 :droit_expert_id,
                 :droit_ressource_id 
             
  #
  # or
  #
  #  permit_params do
  #    permitted = [:libelle, :description]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #    permitted
  #  end


   remove_filter :profile_ressources,:evenement_profiles,:ressource_profiles

   preserve_default_filters! 
   filter :utilisateurs, :collection => proc {(Utilisateur.all).map{|c| [c.nom, c.id]}}
   filter :ressources, :collection => proc {(Ressource.all).map{|c| [c.nom, c.id]}}
   filter :evenements, :collection => proc {(Evenement.all).map{|c| [c.libelle, c.id]}}

   form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'veuillez remplir le formulaire' do
      f.input :libelle
      f.input :description
    end
    f.inputs 'Veuilez selectionner le droit sur les ressources' do
      f.input :droit_ressource,collection: DroitRessource.all.map { |m| [m.libelle, m.id] }
    end
   
    f.inputs 'Veuilez selectionner le droit sur les évènements' do
      f.input :droit_evenement,collection: DroitEvenement.all.map { |m| [m.libelle, m.id] }
    end
    f.inputs 'Veuilez selectionner le droit sur les experts' do
      f.input :droit_expert,collection: DroitExpert.all.map { |m| [m.libelle, m.id] }
    end
   
   
    f.actions
  end
end
