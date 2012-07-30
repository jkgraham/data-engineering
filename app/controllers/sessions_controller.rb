class SessionsController < ApplicationController
	skip_before_filter :login_required
	
	def new
	end

	def create
		user = User.find_or_create_by_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		redirect_to root_url, notice: "Login successful!"
	end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logout successful!"
  end

end