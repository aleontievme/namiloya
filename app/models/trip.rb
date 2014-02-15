class Trip < ActiveRecord::Base
  belongs_to :category
  has_many :schedules

  def to_param
    permalink
  end
end
