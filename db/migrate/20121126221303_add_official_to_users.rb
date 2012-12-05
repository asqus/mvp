class AddOfficialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :official_id, :integer
  end
end
