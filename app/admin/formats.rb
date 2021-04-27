ActiveAdmin.register Format do
  menu parent: "Caracteristiques ressources"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :code, :libelle
  #
  # or
  #
  # permit_params do
  #   permitted = [:code, :libelle]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  show do |t|
    attributes_table do
      row :code
      row :libelle
    end
  end  

  form do |f|
    f.inputs do
      f.input :code
      f.input :libelle
    end
    f.actions
  end
  
end
