class DiscussionComment < ActiveRecord::Base
  attr_accessible :bounty_id, :comment, :discussion_id, :user_id
	belongs_to :bounty
	belongs_to :user
end
