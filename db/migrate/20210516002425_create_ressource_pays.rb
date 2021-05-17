class CreateRessourcePays < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_pays do |t|
      t.references :ressource, null: false, foreign_key: true
      t.references :pay, null: false, foreign_key: true

      t.timestamps
    end
  end
end
