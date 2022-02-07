class CreateTypeExperts < ActiveRecord::Migration[6.1]
  def change
    create_table :type_experts do |t|
      t.string :libelle
      t.string :sigle
      t.text :description

      t.timestamps
    end
  end
end
