class CreatePaysUniteAdministratives < ActiveRecord::Migration[6.1]
  def change
    create_table :pays_unite_administratives do |t|
      t.references :pay, null: false, foreign_key: true
      t.references :unite_administrative, null: false, foreign_key: true

      t.timestamps
    end
  end
end
