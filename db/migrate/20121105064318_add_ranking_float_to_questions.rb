class AddRankingFloatToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :rankvalue, :float
  end
end
