class Upload < ActiveRecord::Base
  attr_accessible :title, :upload, :user_id, :agreement
	belongs_to :user
	has_many :submissions
	has_many :bounties, through: :submissions

	mount_uploader :upload, UploadUploader

	validates_acceptance_of :agreement
end
