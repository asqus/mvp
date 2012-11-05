class CreatePollOptionsSets < ActiveRecord::Migration
  def change
    create_table :poll_options_sets do |t|
      t.text :options
      t.string :set_type
      t.integer :num_options

      t.timestamps
    end
  end
end
