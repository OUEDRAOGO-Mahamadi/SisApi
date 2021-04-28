class CreateEvenementSystemeIrrigues < ActiveRecord::Migration[6.1]
  def change
    create_table :evenement_systeme_irrigues do |t|
      t.references :evenement, null: false, foreign_key: true
      t.references :type_systeme_irrigue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
