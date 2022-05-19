class CreateRessourceVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :ressource_votes do |t|
      t.references :ressource, null: false, foreign_key: true
      t.references :vote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
