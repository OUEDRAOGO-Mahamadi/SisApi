class Caracteristiques < ActiveRecord::Migration[6.1]
  def change
    create_table :Caracteristiques do |t|
      t.string :libelle
      t.string :sigle
      t.string :description
      t.string :valeur
  
      t.timestamps
    end
  end
end
