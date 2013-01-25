class Tagging < ActiveRecord::Base
  attr_accessible :bounty_id, :tag_id
	belongs_to :tag
	belongs_to :bounty
end
