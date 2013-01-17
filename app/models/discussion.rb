class Discussion < ActiveRecord::Base
  attr_accessible :bounty_id, :discussion, :user_id
	belongs_to :bounty
	belongs_to :user
end
