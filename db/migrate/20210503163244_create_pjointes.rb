class CreatePjointes < ActiveRecord::Migration[6.1]
  def change
    create_table :pjointes do |t|
      t.string :file

      t.timestamps
    end
  end
end
