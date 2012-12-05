class AddAnswerValueToUpRelations < ActiveRecord::Migration
  def change
    add_column :up_relations, :answer_value, :integer
  end
end
