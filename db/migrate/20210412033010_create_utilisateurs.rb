class CreateUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateurs do |t|
      t.string :telephone
      t.string :email
      t.string :nom
      t.string :prenom
      t.string :fonction
      t.string :password
      t.string :status
      t.references :structure, null: false, foreign_key: true
      t.references :specialite, null: false, foreign_key: true
      t.references :categorie, null: false, foreign_key: true
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
