class AddAnswerValueToUpRelations < ActiveRecord::Migration
  def change
    add_column :up_relations, :answervalue, :integer
  end
end
