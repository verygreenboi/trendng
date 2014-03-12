class ConfirmationsController < Devise::PasswordsController
	skip_before_filter :require_no_authentication
	skip_before_filter :authenticate_user!

	# POST
	def create
		self.resource = resource_class.send_confirmation_instructios(resource_params)
		if successfully_sent?(resource)
			respond_with({}, :locatio => after_resending_confirmation_instructions_path_for(resource_name))
		else
			respond_with(resource)	
		end		
	end

	# PUT
	def update
		with_unconfirmed_confirmable do 
			if @confirmable.has_no_password?
				@confirmable.attempt_set_password(params[:user])
				if @confirmable.valid?
					do_confirm
				else
					do_show
					@confirmable.errors.clear
				end
			else
				self.class.add_error_on(self, :email, :password_allready_set)					
			end				
		end
		if !@confirmable.errors.empty?
			render 'devise/confirmations/new'
		end
	end

	#GET
	def show
		with_unconfirmed_confirmable do
		end	
	end
end