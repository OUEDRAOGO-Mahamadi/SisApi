class CreateRessourceLangues < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_langues do |t|
      t.references :langue, null: false, foreign_key: true
      t.references :ressource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
