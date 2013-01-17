class CreateDiscussionComments < ActiveRecord::Migration
  def change
    create_table :discussion_comments do |t|
      t.text :comment
      t.integer :bounty_id
      t.integer :discussion_id

      t.timestamps
    end
  end
end
