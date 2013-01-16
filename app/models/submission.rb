class Submission < ActiveRecord::Base
  attr_accessible :bounty_id, :upload_id
	belongs_to :upload
	belongs_to :bounty
end
