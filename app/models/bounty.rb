class Bounty < ActiveRecord::Base
  attr_accessible :body, :bounty, :title, :user_id
	belongs_to :user
	has_many :submissions
	has_many :uploads, through: :submissions
	has_many :discussions
	has_many :discussion_comments
end
