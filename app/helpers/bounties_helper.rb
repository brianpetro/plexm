module BountiesHelper
	def get_user_name(uid)
		@user = User.find_by_id(uid)
		return @user.name
	end
end
