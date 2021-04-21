class CreateRessourceProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_profiles do |t|
      t.references :profile,index: true, null: false, foreign_key: true
      t.references :ressource,index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
