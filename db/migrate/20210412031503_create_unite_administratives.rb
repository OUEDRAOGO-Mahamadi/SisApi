class CreateUniteAdministratives < ActiveRecord::Migration[6.1]
  def change
    create_table :unite_administratives do |t|
      t.string :libelle
      t.string :code

      t.timestamps
    end
  end
end
