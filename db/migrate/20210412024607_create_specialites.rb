class CreateSpecialites < ActiveRecord::Migration[6.1]
  def change
    create_table :specialites do |t|
      t.string :code
      t.string :designation

      t.timestamps
    end
  end
end
