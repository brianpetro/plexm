class Discussion < ActiveRecord::Base
  attr_accessible :bounty_id, :discussion, :user_id
end
