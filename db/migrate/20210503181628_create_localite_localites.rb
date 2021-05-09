class CreateLocaliteLocalites < ActiveRecord::Migration[6.1]
  def change
    create_table :localite_localites do |t|
      t.references :localite, null: false, foreign_key: true
      t.references :sous_localite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
