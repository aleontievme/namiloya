class Photo < ActiveRecord::Base
  mount_uploader :url, PhotoUploader
  
  def to_s
    "#{name}"
  end
end
