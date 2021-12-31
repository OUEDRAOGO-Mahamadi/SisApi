class CreateEvenementMotCles < ActiveRecord::Migration[6.1]
  def change
    create_table :evenement_mot_cles do |t|
      t.references :mot_cle, null: false, foreign_key: true
      t.references :evenement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
