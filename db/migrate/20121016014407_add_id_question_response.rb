class AddIdQuestionResponse < ActiveRecord::Migration
  def up
    add_index :questions, [:user_id, :created_at]
  end

  def down
  end
end
