module SessionsHelper

	# Logs in the given user.
	def log_in(user, user_type)
		session[:user_id] = user.id
		session[:user_type] = user_type
	end

	 # Returns the current logged-in user (if any).
	def current_user
		@current_user ||= get_current_user		
	end

	def get_current_user
		if session[:user_type] == 'family'
			Family.find_by(id: session[:user_id])
		elsif session[:user_type] == 'babysitter'
			Babysitter.find_by(id: session[:user_id])
		end
	end

	# Returns true if the user is logged in, false otherwise.
	def logged_in?
		!current_user.nil?
	end

	def log_out
	    session.delete(:user_id)
	    @current_user = nil
  	end
end
