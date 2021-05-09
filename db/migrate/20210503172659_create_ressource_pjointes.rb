class CreateRessourcePjointes < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_pjointes do |t|
      t.references :ressource, null: false, foreign_key: true
      t.references :pjointe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
