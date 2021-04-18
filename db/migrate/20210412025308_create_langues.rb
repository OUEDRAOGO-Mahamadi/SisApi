class CreateLangues < ActiveRecord::Migration[6.1]
  def change
    create_table :langues do |t|
      t.string :code
      t.string :nom

      t.timestamps
    end
  end
end
