class Upload < ActiveRecord::Base
  attr_accessible :title, :upload, :user_id, :agreement, :artist
	belongs_to :user
	has_many :submissions
	has_many :bounties, through: :submissions
	mount_uploader :upload, UploadUploader
	validates_presence_of :title
	validates_presence_of :upload
	validates_presence_of :artist
	validates_acceptance_of :agreement
end
