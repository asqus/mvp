class AddColumn2 < ActiveRecord::Migration
  def up
  	add_column :polls, :user_id, :integer
  end

  def down
  	remove_column :polls, :user_id
  end
end
