class CreateEvenementThematiques < ActiveRecord::Migration[6.1]
  def change
    create_table :evenement_thematiques do |t|
      t.references :evenement, null: false, foreign_key: true
      t.references :thematique, null: false, foreign_key: true

      t.timestamps
    end
  end
end
