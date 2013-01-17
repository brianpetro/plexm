class Comment < ActiveRecord::Base
  attr_accessible :comment, :submission_id, :user_id
	belongs_to :submission
	belongs_to :user
end
