class AddIdPolls < ActiveRecord::Migration
  def up
    add_index :polls, [:user_id, :created_at]
  end

  def down
  end
end