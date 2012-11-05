class AddPollOptionsSetToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :poll_options_set_id, :integer
  end
end
