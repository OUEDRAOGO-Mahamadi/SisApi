class CreateTypeSousTypeRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :type_sous_type_ressources do |t|
      t.references :sous_type_ressource, null: false, foreign_key: true
      t.references :type_ressource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
