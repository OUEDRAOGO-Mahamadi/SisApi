class TypeSystemeIrrigues < ActiveRecord::Migration[6.1]
  def change
    create_table :type_systeme_irrigues do |t|
      t.string :libelle
      t.string :sigle
      t.string :description
      t.timestamps
    end
  end
end
