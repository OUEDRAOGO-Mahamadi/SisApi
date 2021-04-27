class CreateRessourceProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_profiles do |t|
      t.references :profile,index: true
      t.references :ressource,index: true

      t.timestamps
    end
    add_foreign_key :ressource_profiles, :profiles
    add_foreign_key :ressource_profiles, :ressources
  end
end
