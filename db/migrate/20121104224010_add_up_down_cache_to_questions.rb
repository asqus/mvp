class AddUpDownCacheToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :up_cache, :integer
    add_column :questions, :down_cache, :integer
  end
end
