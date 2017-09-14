class SessionsController < ApplicationController
  def new
  end

  def create
    babysitter = Babysitter.find_by(email: params[:session][:email].downcase)
    family = Family.find_by(email: params[:session][:email].downcase)
    if babysitter && babysitter.authenticate(params[:session][:password])
      log_in(babysitter, 'babysitter')
    	redirect_to '/babysitter-profile'
    elsif family && family.authenticate(params[:session][:password])
    	log_in(family, 'family')
    	redirect_to '/family-profile'
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end
end
