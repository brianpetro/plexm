class Upload < ActiveRecord::Base
  attr_accessible :title, :upload, :user_id
	belongs_to :user
	has_many :submissions
	has_many :bounties, through: :submissions
end
