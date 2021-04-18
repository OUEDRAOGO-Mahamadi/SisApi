class CreateStructures < ActiveRecord::Migration[6.1]
  def change
    create_table :structures do |t|
      t.string :libelle
      t.string :sigle
      t.string :adresse
      t.string :telephone

      t.timestamps
    end
  end
end
