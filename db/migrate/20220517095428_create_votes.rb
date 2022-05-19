class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.text :description
      t.integer :user_id
      t.integer :etoile

      t.timestamps
    end
  end
end
