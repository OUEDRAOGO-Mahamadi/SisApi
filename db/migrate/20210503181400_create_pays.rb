class CreatePays < ActiveRecord::Migration[6.1]
  def change
    create_table :pays do |t|
      t.string :code
      t.string :nom

      t.timestamps
    end
  end
end
