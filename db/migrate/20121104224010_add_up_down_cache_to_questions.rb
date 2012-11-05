class AddUpDownCacheToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :upCache, :integer
    add_column :questions, :downCache, :integer
  end
end
