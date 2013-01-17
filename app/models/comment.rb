class Comment < ActiveRecord::Base
  attr_accessible :comment, :submission_id, :user_id
end
