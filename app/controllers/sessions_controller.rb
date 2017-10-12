class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.user_type == '1' && user.authenticate(params[:session][:password])
      log_in(user)
    	redirect_to '/babysitter-profile'
    elsif user && user.user_type == '2' && user.authenticate(params[:session][:password])
    	log_in(user)
    	redirect_to '/family-profile'
    else
      #TODO Create an error message.
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to '/login'
  end
end
