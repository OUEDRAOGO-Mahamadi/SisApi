class CreatePaysRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :pays_regions do |t|
      t.references :pays, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
