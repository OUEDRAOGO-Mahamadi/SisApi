class CreateRessourceLangues < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_langues do |t|
      t.references :langue, null: false, index: true
      t.references :ressource, null: false, index: true

      t.timestamps
    end
    add_foreign_key :ressource_langues, :langues
    add_foreign_key :ressource_langues, :ressources
  end
end
