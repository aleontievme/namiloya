class ScheduleController < ApplicationController
  def show
    @schedule = Schedule
      .includes{trip.category}
      .order{trip.id}
      .order{trip.category.id}
      .group_by{|x| x.trip.category}
  end
end
