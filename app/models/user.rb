class User < ActiveRecord::Base
  rolify
  after_create :assign_default_role

  def assign_default_role
    add_role(:standard)
  end
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

	has_many :bounties
	has_many :uploads
	has_many :submissions
	has_many :discussions
	has_many :comments
	has_many :discussion_comments

	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
		  user.provider = auth.provider
		  user.uid = auth.uid
		  user.name = auth.info.name
		  user.oauth_token = auth.credentials.token
		  user.oauth_expires_at = Time.at(auth.credentials.expires_at)
			user.assign_default_role
			user.email = auth.info.email
		  user.save(:validate => false)
		end
	end

	def facebook
		@facebook ||= Koala::Facebook::API.new(oauth_token)
	end
end
