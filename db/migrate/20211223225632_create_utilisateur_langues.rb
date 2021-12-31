class CreateUtilisateurLangues < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateur_langues do |t|
      t.references :langue, null: false, foreign_key: true
      t.references :utilisateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
