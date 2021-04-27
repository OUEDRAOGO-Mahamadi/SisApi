class CreateRessourceMotCles < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_mot_cles do |t|
      t.references :mot_cle, index: true
      t.references :ressource, index: true

      t.timestamps
    end
    add_foreign_key :ressource_mot_cles, :mot_cles
    add_foreign_key :ressource_mot_cles, :ressources
  end
end
