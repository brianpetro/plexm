class Bounty < ActiveRecord::Base
  attr_accessible :body, :bounty, :title, :user_id
	belongs_to :user
	has_many :submissions
	has_many :uploads, through: :submissions
end
