class CreatePjointes < ActiveRecord::Migration[6.1]
  def change
    create_table :pjointes do |t|
      t.string :file
      t.string :taille
      t.timestamps
    end
  end
end
