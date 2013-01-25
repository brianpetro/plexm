class Bounty < ActiveRecord::Base
  attr_accessible :body, :bounty, :title, :user_id, :paid, :winner, :closed, :tag_ids
	belongs_to :user
	has_many :submissions
	has_many :uploads, through: :submissions
	has_many :discussions
	has_many :discussion_comments

	has_many :taggings
	has_many :tags, through: :taggings, uniq: true
end
