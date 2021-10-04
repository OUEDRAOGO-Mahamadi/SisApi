class CreateEvenements < ActiveRecord::Migration[6.1]
  def change
    create_table :evenements do |t|
      t.string :libelle
      t.datetime :date_debut, precision: 6, null: false
      t.datetime :date_fin, precision: 6, null: false
      t.string :heure_debut
      t.string :heure_fin
      t.string :lieu
      t.string :organisateur
      t.string :objectif
      t.string :cible
      t.text :description
      t.string :url
      #t.references :thematique, null: false, foreign_key: true
      #t.references :type_systeme_irrigue, null: false, foreign_key: true
      t.references :type_evenement, null: false, foreign_key: true
      #t.references :profile, null: false, foreign_key: true
      #t.references :unite_administrative, null: false, foreign_key: true

      t.timestamps
    end
  end
end
