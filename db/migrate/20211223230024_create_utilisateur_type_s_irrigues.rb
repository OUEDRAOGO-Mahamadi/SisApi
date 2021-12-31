class CreateUtilisateurTypeSIrrigues < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateur_type_s_irrigues do |t|
      t.references :type_systeme_irrigue, null: false, foreign_key: true
      t.references :utilisateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
