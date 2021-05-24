class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :file
      t.string :taille
      t.timestamps
    end
  end
end
