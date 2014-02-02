class TripController < ApplicationController
  def show
  	permalink = params[:permalink]
  	date      = params[:date]
  	@date     = date

  	if date.nil?
  		@trip = Trip.find_by(permalink: permalink)
  	else
  		@trip     = Trip.find_by(permalink: permalink)
  		@schedule = Schedule.find_by(trip_id: @trip.id, begin: date)
  	end

  	@next_trip = Schedule
    	.where{trip_id.eq 1}
  end
end
