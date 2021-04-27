class CreateRessourceUniteAdministratives < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_unite_administratives do |t|
      t.references :unite_administrative, null: false, foreign_key: true
      t.references :ressource, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :ressource_unite_administratives, :unite_administratives
    add_foreign_key :ressource_unite_administratives, :ressources
  end
end
