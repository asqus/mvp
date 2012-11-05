class AddRankingFloatToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :rankValue, :float
  end
end
