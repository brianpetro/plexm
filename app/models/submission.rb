class Submission < ActiveRecord::Base
  attr_accessible :bounty_id, :upload_id, :user_id
	belongs_to :upload
	belongs_to :bounty
	belongs_to :user
	has_many :comments
end
