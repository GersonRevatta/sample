class CallbacksController < Devise::OmniauthCallbacksController
	def github
		binding.pry
		@user = User.from_omniauth(request.env["omniauth.auth"])
		signing_and_redirect @user
	end
end
# class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController