class CreateUtilisateurPays < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateur_pays do |t|
      t.references :pay, null: false, foreign_key: true
      t.references :utilisateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
