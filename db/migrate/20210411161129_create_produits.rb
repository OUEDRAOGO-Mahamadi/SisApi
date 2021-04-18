class CreateProduits < ActiveRecord::Migration[6.1]
  def change
    create_table :produits do |t|
      t.string :nom
      t.integer :prix
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
