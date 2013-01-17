class AddUserIdToDiscussionComments < ActiveRecord::Migration
  def change
    add_column :discussion_comments, :user_id, :integer
  end
end
