class CreateDroitRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :droit_ressources do |t|
      t.string :libelle
      t.boolean :creer
      t.boolean :lire
      t.boolean :modifier
      t.boolean :supprimer

      t.timestamps
    end
  end
end
