class DiscussionComment < ActiveRecord::Base
  attr_accessible :bounty_id, :comment, :discussion_id
end
