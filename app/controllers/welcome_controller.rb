class WelcomeController < ApplicationController
  def index
    @next_trip = Schedule
    	.includes{trip.category}
    	.order{trip.id}
    	.order{trip.category.id}
    	.group_by{|x| x.trip.category}
  end
end
