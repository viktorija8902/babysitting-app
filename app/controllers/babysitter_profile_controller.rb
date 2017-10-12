class BabysitterProfileController < ApplicationController
  def index
    @babysitter= Babysitter.find_by(user_id: session[:user_id])
  	@all_babysitting_days = BabysittingDay.all
  	@all_babysitting_times = BabysittingTime.all
  end

  def create
  	babysitter_id = Babysitter.find_by(user_id: session[:user_id]).id
  	SelectedBabysittingTime.update_available_times(params, babysitter_id)
  end
end
