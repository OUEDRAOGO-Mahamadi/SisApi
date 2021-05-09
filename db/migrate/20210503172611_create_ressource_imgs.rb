class CreateRessourceImgs < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_imgs do |t|
      t.references :ressource, null: false, foreign_key: true
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
