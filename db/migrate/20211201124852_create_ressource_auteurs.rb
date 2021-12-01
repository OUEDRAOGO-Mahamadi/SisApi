class CreateRessourceAuteurs < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_auteurs do |t|
      t.references :auteur, null: false, foreign_key: true
      t.references :ressource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
