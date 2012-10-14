class AddColumn < ActiveRecord::Migration
  def up
  	add_column :questions, :user_id, :integer
  	add_column :responses, :question_id, :integer
  	add_column :responses, :user_id, :integer
  end

  def down
  	remove_column :questions, :user_id
  	remove_column :responses, :question_id
  	remove_column :responses, :user_id
  end
end
