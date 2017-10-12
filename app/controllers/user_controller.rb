class UserController < ApplicationController

  def create
    @user = User.new(login_params)
    if @user.save
      @user = User.find_by(email: login_params[:email])
      user_type = @user[:user_type]
    	if user_type == '1'
        user_profile =  Babysitter.new(additional_params)
    	elsif (user_type == '2')
        user_profile =  Family.new(additional_params)
    	end
      if user_profile.save
      	redirect_to '/login'
      else
        render 'registration_form'
      end
    end
  end

  def index
  	render 'registration_form'
  end

  private
    def login_params
      params.deep_dup().require(:user)
        .extract!(:email, :password, :password_confirmation, :user_type)
        .permit(:email, :password, :password_confirmation, :user_type)
    end
    def additional_params
      params.deep_dup().require(:user)
        .extract!(:name)
        .permit(:name).merge(user_id: @user.id)
    end
end
