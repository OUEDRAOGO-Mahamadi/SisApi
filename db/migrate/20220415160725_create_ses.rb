class CreateSes < ActiveRecord::Migration[6.1]
  def change
    create_table :ses do |t|
      t.text :condition
      t.text :description

      t.timestamps
    end
  end
end
