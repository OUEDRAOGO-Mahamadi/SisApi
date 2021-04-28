class CreateSousThematiques < ActiveRecord::Migration[6.1]
  def change
    create_table :sous_thematiques do |t|
      t.string :libelle
      t.string :description

      t.timestamps
    end
  end
end
