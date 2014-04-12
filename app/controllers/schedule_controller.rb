class ScheduleController < ApplicationController
  def show
    @schedule = Schedule
      .includes{trip.category}
      .where{begin_date > DateTime.now}
      .order{begin_date}
      .order{trip.id}
      .order{trip.order_num}
      .group_by{|x| x.trip.category}
  end
end
