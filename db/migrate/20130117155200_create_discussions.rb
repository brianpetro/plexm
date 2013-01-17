class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.text :discussion
      t.integer :user_id
      t.integer :bounty_id

      t.timestamps
    end
  end
end
