class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :author
      t.integer :user_id
      t.text :content
      t.string :commentable_type
      t.integer :commentable_id
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
