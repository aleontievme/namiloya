class Trip < ActiveRecord::Base
  belongs_to :category
  has_many :schedules
  has_many :trip_photos
  has_many :photos, through: :trip_photos

  def to_param
    permalink
  end
end
