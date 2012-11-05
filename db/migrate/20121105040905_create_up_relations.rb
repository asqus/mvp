class CreateUpRelations < ActiveRecord::Migration
  def change
    create_table :up_relations do |t|
      t.integer :user_id
      t.integer :poll_id
      t.boolean :updown

      t.timestamps
    end

    add_index :up_relations, :poll_id
    add_index :up_relations, :user_id
    add_index :up_relations, [:poll_id, :user_id], unique: true
  end
end
