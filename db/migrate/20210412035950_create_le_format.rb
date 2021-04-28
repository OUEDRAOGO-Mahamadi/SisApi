class CreateLeFormat < ActiveRecord::Migration[6.1]
  def change
    create_table :le_formats do |t|
      t.string :code
      t.string :libelle

      t.timestamps
    end
  end
end
