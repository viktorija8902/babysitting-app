class BabysitterProfileController < ApplicationController
  def index
  	@all_babysitting_days = BabysittingDay.all
  	@all_babysitting_times = BabysittingTime.all
  end

  def create
  	babysitter_id = Babysitter.find_by(id: session[:user_id]).id
  	SelectedBabysittingTime.update_available_times(params, babysitter_id)
  end
end
