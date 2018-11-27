class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :collaborator_id
      t.integer :collaborated_id
      t.timestamps
    end
    add_index :relationships, :collaborated_id
    add_index :relationships, :collaborator_id
    add_index :relationships, [:collaborated_id, :collaborator_id], unique: true
  end
end
