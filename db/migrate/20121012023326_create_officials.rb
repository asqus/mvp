class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.string :position
      t.string :name
      t.integer :district_id

      t.timestamps
    end
  end
end
