class CreateSousTypeRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :sous_type_ressources do |t|
      t.string :libelle
      t.string :description
      t.string :sigle

      t.timestamps
    end
  end
end
