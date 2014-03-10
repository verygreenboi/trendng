class ConfirmationsController < Devise::PasswordsController
	skip_before_filter :require_no_authentication
	skip_before_filter :authenticate_user!

	# POST
	def create
		
	end
end