module BountiesHelper
	def get_user_name(uid)
		@user = User.find_by_id(uid)
		return @user.name
	end

	def get_user_id_from_upload_id(uid)
		@upload = Upload.find_by_id(uid)
		return @upload.user_id
	end
end
