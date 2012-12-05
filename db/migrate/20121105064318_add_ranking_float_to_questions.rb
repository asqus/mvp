class AddRankingFloatToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :rank_value, :float
  end
end
