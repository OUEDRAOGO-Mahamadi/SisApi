class CreateTypeSystemeIrrigueCqs < ActiveRecord::Migration[6.1]
  def change
    create_table :type_systeme_irrigue_cqs do |t|
      t.references :caracteristique, null: false, foreign_key: true
      t.references :type_systeme_irrigue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
