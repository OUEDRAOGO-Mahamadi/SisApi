class CreateThematiqueSousThematiques < ActiveRecord::Migration[6.1]
  def change
    create_table :thematique_sous_thematiques do |t|
      t.references :thematique, null: false, foreign_key: true
      t.references :sous_thematique, null: false, foreign_key: true

      t.timestamps
    end
  end
end
