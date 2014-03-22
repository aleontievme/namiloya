class ScheduleController < ApplicationController
  def show
    @schedule = Schedule
      .includes{trip.category}
      .where{begin_date > DateTime.now}
      .order{begin_date}
      .order{trip.id}
      .order{trip.order_num}
      .order{trip.category.id}
      .group_by{|x| x.trip.category}
  end
end
