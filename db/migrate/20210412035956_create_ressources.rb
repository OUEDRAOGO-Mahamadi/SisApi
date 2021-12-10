class CreateRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :ressources do |t|
      t.string :nom
      t.datetime :derniere_date_consulte , precision: 6, null: false,default:DateTime.now
      # t.datetime :date_creation, precision: 6, null: false,default:DateTime.now
      # t.datetime :derniere_date_maj, precision: 6, null: false,default:DateTime.now
      t.datetime :date_debut_publication, null: false
      t.datetime :date_fin_publication, null: false
      t.datetime :date_edition, null: true
      t.string :statut
      t.string :video
      t.string :image
      t.text :description
      t.string :url
      t.integer :nombre_vue, default:0
      t.integer :nombre_telecharge, default:0
      t.references :le_format, null: false, foreign_key: true
      #t.references :langue, null: false, foreign_key: true
      #t.references :mot_cle, null: false, foreign_key: true
      t.references :utilisateur, null: false, foreign_key: true
      #t.references :unite_administrative, null: false, foreign_key: true
      #t.references :thematique, null: false, foreign_key: true
      #t.references :type_systeme_irrigue, null: false, foreign_key: true
      t.references :type_ressource, null: false, foreign_key: true
      #t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
