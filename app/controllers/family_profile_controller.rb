class FamilyProfileController < ApplicationController
  def index
    @family = Family.find_by(user_id: session[:user_id])
  	@available_babysitting_times = SelectedBabysittingTime.get_available_babysitting_times
  end

   def create
  	family_id = Family.find_by(user_id: session[:user_id]).id
  	SelectedBabysittingTime.schedule_babysitting_time(params, family_id)
  	redirect_to '/family-profile'
  end
end
