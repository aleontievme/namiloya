class TripPhoto < ActiveRecord::Base
  belongs_to :trip
  belongs_to :photo
  #has_one :photo, :foreign_key => :id, :primary_key => :photo_id
end
