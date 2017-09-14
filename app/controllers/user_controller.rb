class UserController < ApplicationController

  def create
  	user_type = params.dig('user', 'user_type')
  	if user_type == '1'
  		@user = Babysitter.new(user_params)
  	elsif (user_type == '2')
  		@user = Family.new(user_params)
  	end
    if @user.save
    	redirect_to '/login'
    else
      render 'registration_form'
    end
  end

  def index
  	render 'registration_form'
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
