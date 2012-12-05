class AddEmailToOfficials < ActiveRecord::Migration
  def change
    add_column :officials, :email, :string
  end
end
