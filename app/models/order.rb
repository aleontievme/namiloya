class Order < ActiveRecord::Base
  belongs_to :schedule
  before_create :set_permalink
  
  def to_param
    permalink
  end

  def set_permalink
    self.permalink = SecureRandom.hex(3)
  end
end
