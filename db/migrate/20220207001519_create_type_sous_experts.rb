class CreateTypeSousExperts < ActiveRecord::Migration[6.1]
  def change
    create_table :type_sous_experts do |t|
      t.references :sous_type_expert, null: false, foreign_key: true
      t.references :type_expert, null: false, foreign_key: true

      t.timestamps
    end
  end
end
