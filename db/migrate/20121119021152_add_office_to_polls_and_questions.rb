class AddOfficeToPollsAndQuestions < ActiveRecord::Migration
  def change
    add_column :polls, :official_id, :integer
    add_column :questions, :official_id, :integer
    add_index :polls, [:official_id, :created_at]
    add_index :questions, [:official_id, :created_at]
  end
end
