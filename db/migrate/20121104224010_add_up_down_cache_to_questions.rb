class AddUpDownCacheToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :upcache, :integer
    add_column :questions, :downcache, :integer
  end
end
