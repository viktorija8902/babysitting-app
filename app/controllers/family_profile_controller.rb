class FamilyProfileController < ApplicationController
  def index
  	@available_babysitting_times = SelectedBabysittingTime.get_available_babysitting_times
  end

   def create
  	family_id = Family.find_by(id: session[:user_id]).id
  	SelectedBabysittingTime.schedule_babysitting_time(params, family_id)
  	redirect_to '/family-profile'
  end
end
