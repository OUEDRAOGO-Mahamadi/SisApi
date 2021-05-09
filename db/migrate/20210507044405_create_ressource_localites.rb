class CreateRessourceLocalites < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_localites do |t|
      t.references :ressource, null: false, foreign_key: true
      t.references :sous_localite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
