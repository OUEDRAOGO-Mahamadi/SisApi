class CreateLocalites < ActiveRecord::Migration[6.1]
  def change
    create_table :localites do |t|
      t.string :type_localite
      t.string :nom

      t.timestamps
    end
  end
end
