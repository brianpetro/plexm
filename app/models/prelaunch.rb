class Prelaunch < ActiveRecord::Base
  attr_accessible :email

	validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
	validates_presence_of :email
	validates_uniqueness_of :email
end
