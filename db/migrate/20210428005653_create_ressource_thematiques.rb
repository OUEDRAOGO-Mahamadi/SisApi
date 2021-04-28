class CreateRessourceThematiques < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_thematiques do |t|
      t.references :ressource, null: false, foreign_key: true
      t.references :thematique, null: false, foreign_key: true

      t.timestamps
    end
  end
end
