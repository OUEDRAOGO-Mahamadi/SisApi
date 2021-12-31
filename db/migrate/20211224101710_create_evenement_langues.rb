class CreateEvenementLangues < ActiveRecord::Migration[6.1]
  def change
    create_table :evenement_langues do |t|
      t.references :langue, null: false, foreign_key: true
      t.references :evenement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
