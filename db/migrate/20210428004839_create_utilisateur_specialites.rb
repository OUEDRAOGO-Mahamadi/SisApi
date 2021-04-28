class CreateUtilisateurSpecialites < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateur_specialites do |t|
      t.references :utilisateur, null: false, foreign_key: true
      t.references :specialite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
