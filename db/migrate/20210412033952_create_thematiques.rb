class CreateThematiques < ActiveRecord::Migration[6.1]
  def change
    create_table :thematiques do |t|
      t.string :libelle
      t.string :description
      #t.references :thematique, null: false, foreign_key: true

      #t.timestamps
    end
  end
end
