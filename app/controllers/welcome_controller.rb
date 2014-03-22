class WelcomeController < ApplicationController
  def index
    @next_trip = Schedule
      .includes{trip.category}
      .where{(begin_date >= DateTime.now) & (end_date <= DateTime.now + 31)}
      .order{begin_date}
      .order{trip.id}
      .order{trip.order_num}
      .order{trip.category.id}
      .group_by{|x| x.trip.category}
    @trip_photos = TripPhoto.all.sample(5)
  end
end
