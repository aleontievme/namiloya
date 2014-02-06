class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :trip, index: true
      t.date :begin_date
      t.date :end_date
      t.time :begin_time
      t.time :end_time
    end
  end
end
