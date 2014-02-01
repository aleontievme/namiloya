class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :trip, index: true
      t.datetime :date
    end
  end
end
