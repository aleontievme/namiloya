class Schedule < ActiveRecord::Base
  belongs_to :trip
  has_many :orders
end
