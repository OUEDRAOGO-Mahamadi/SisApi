class CreateEvenementProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :evenement_profiles do |t|
      t.references :evenement, null: false, foreign_key: true
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
