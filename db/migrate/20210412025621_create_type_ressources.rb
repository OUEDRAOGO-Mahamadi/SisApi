class CreateTypeRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :type_ressources do |t|
      t.string :libelle
      t.string :sigle
      t.string :description

      t.timestamps
    end
  end
end
