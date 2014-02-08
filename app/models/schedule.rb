class Schedule < ActiveRecord::Base
  belongs_to :trip
  has_many :orders
  
  # next schedules for specified trip
  scope :next, ->(trip) { 
    where{(trip_id.eq trip) & (begin_date > DateTime.now)}.
    order{begin_date}
  }
end
