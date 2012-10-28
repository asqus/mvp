class CreateUserQuestionRelationshipWithYayNays < ActiveRecord::Migration
  def change
    create_table :user_question_relation_yay_nays do |t|
      t.integer :user_id
      t.integer :question_id
      t.boolean :yaynay

      t.timestamps
    end

    add_index :user_question_relation_yay_nays, :user_id
    add_index :user_question_relation_yay_nays, :question_id
    add_index :user_question_relation_yay_nays, [:user_id, :question_id], unique: true
  end
end
