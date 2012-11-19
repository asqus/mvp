class AddOfficeToPollsAndQuestions < ActiveRecord::Migration
  def change
    add_column :polls, :office_id, :integer
    add_column :questions, :office_id, :integer
    add_index :polls, [:office_id, :created_at]
    add_index :questions, [:office_id, :created_at]
  end
end
