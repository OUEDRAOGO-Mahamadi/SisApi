ActiveAdmin.register Thematique do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :libelle, :description, :thematique_id
  #
  # or
  #
   permit_params do
     permitted = [:libelle, :description, :thematique_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end

   form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Details' do
      f.input :libelle
      f.input :description
    end
    f.inputs 'Details' do
      f.input :thematique,collection: Thematique.all.map { |m| [m.libelle, m.id] }
    end
    f.actions
  end
  
end
