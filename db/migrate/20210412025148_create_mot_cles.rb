class CreateMotCles < ActiveRecord::Migration[6.1]
  def change
    create_table :mot_cles do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
