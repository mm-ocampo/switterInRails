class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by(username: params[:session][:username].downcase, password: params[:session][:password])
		if @user
      		redirect_to swits_path
		# Sign the user in and redirect to the user's show page.
		else
			flash[:error] = 'Invalid email/password combination' # Not quite right!
			render 'new'
		end
	end

	def destroy
	end
end
