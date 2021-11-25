class CreateRessourceSousRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_sous_ressources do |t|
      t.references :ressource, null: false, foreign_key: true
      t.references :sous_type_ressource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
