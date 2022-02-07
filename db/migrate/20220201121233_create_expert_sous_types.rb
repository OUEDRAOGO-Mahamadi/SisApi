class CreateExpertSousTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :expert_sous_types do |t|
      t.references :sous_type_expert, null: false, foreign_key: true
      t.references :utilisateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
