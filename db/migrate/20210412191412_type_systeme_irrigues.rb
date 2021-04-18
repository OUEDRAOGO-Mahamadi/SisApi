class TypeSystemeIrrigues < ActiveRecord::Migration[6.1]
  def change
    create_table :TypeSystemeIrrigues do |t|
      t.string :libelle
      t.string :sigle
      t.string :description
      t.references :caracteristique, null: false, foreign_key: true
      t.timestamps
    end
  end
end
