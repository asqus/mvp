class AddAnswerValueToUpRelations < ActiveRecord::Migration
  def change
    add_column :up_relations, :answerValue, :integer
  end
end
