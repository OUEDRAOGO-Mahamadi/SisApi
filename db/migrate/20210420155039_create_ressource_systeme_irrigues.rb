class CreateRessourceSystemeIrrigues < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_systeme_irrigues do |t|
      t.references :type_systeme_irrigue, null: false, foreign_key: true
      t.references :ressource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
