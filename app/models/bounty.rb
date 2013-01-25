class Bounty < ActiveRecord::Base
  attr_accessible :body, :bounty, :title, :user_id, :paid, :winner, :closed, :tag_tokens
	belongs_to :user
	has_many :submissions
	has_many :uploads, through: :submissions
	has_many :discussions
	has_many :discussion_comments

	has_many :taggings
	has_many :tags, through: :taggings, uniq: true
	attr_reader :tag_tokens
	
	def tag_tokens=(ids)
		self.tag_ids = ids.split(" ")
	end
end
