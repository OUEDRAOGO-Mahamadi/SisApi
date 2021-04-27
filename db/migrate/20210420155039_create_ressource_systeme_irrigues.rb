class CreateRessourceSystemeIrrigues < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_systeme_irrigues do |t|
      t.references :type_systeme_irrigue, index: true
      t.references :ressource,index: true

      t.timestamps
    end
    add_foreign_key :ressource_systeme_irrigues, :type_systeme_irrigues
    add_foreign_key :ressource_systeme_irrigues, :ressources
  end 
end
