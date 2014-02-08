class TripController < ApplicationController
  def show
    # find trip
    permalink = params[:permalink]
    trip      = Trip.find_by(permalink: permalink)
    
    # find schedule
    date      = params[:date] || nearest_schedule_date(trip)
    schedule  = Schedule.find_by(trip_id: trip.id, begin_date: date)
    
    # next trip
    next_trip = Schedule.next(trip.id)

    # export
    @trip, @date, @schedule, @next_trip = trip, date, schedule, next_trip
  end

  private

  def nearest_schedule_date(trip)
    schedule = Schedule.next(trip)
    schedule.first.begin_date
  end
end
