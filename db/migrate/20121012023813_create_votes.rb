class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :response

      t.timestamps
    end
  end
end
