class CreateTypeEvenements < ActiveRecord::Migration[6.1]
  def change
    create_table :type_evenements do |t|
      t.string :libelle
      t.string :description

      t.timestamps
    end
  end
end
