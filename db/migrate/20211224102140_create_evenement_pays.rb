class CreateEvenementPays < ActiveRecord::Migration[6.1]
  def change
    create_table :evenement_pays do |t|
      t.references :pay, null: false, foreign_key: true
      t.references :evenement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
