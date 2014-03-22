class ScheduleController < ApplicationController
  def show
    @schedule = Schedule
      .includes{trip.category}
      .where{begin_date > DateTime.now}
      .order{trip.id}
      .order{trip.order_num}
      .order{trip.category.id}
      .order{begin_date}
      .group_by{|x| x.trip.category}
  end
end
