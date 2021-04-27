class CreateRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :ressources do |t|
      t.string :nom
      t.string :date_creation
      t.string :derniere_date_maj
      t.string :date_debut_publication
      t.string :date_fin_publication
      t.string :statut
      t.string :video
      t.string :image
      t.string :description
      t.string :url
      t.references :format, null: false, foreign_key: true
      #t.references :langue, null: false, foreign_key: true
      #t.references :mot_cle, null: false, foreign_key: true
      t.references :utilisateur, null: false, foreign_key: true
      #t.references :unite_administrative, null: false, foreign_key: true
      t.references :thematique, null: false, foreign_key: true
      #t.references :type_systeme_irrigue, null: false, foreign_key: true
      t.references :type_ressource, null: false, foreign_key: true
      #t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
