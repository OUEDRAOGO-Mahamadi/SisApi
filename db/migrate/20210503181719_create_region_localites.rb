class CreateRegionLocalites < ActiveRecord::Migration[6.1]
  def change
    create_table :region_localites do |t|
      t.references :localite, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
