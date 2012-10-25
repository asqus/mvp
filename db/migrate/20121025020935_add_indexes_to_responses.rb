class AddIndexesToResponses < ActiveRecord::Migration
  def change
  	add_index :responses, [:user_id, :created_at]
  	add_index :responses, [:question_id, :created_at]
  end
end
