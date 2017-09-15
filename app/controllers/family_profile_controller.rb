class FamilyProfileController < ApplicationController
  def index
  	@available_babysitting_times = SelectedBabysittingTime.where('family_id': nil).joins(:babysitter, :babysitting_time, :babysitting_day)
  									.select('id', 'family_id', 'name', 'babysitting_day_id', 'day', 'babysitting_time_id', 'start_time', 'end_time')
  end

   def create
  	family_id = Family.find_by(id: session[:user_id]).id
  	SelectedBabysittingTime.schedule_babysitting_time(params, family_id)
  	redirect_to '/family-profile'
  end
end
