class CreateTripPhotos < ActiveRecord::Migration
  def change
    create_table :trip_photos do |t|
      t.references :trip, index: true
      t.references :photo, index: true
    end
  end
end
