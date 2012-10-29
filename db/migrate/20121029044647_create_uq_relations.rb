class CreateUqRelations < ActiveRecord::Migration
  def change
    create_table :uq_relations do |t|
      t.integer :user_id
      t.integer :question_id
      t.boolean :yaynay

      t.timestamps
    end

    add_index :uq_relations, :question_id
    add_index :uq_relations, :user_id
    add_index :uq_relations, [:question_id, :user_id], unique: true
  end
end
