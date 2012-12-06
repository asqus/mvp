class AddControversyToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :controversy_value, :float
  end
end
