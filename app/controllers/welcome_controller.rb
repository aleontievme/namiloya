class WelcomeController < ApplicationController
  def index
    @next_trip = Schedule
      .includes{trip.category}
      .where{begin_date >= DateTime.now}
      .order{begin_date}
      .order{trip.id}
      .order{trip.category.id}
      .group_by{|x| x.trip.category}
  end
end
