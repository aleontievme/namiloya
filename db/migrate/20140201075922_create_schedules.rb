class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :trip, index: true
      t.datetime :begin
      t.datetime :end
    end
  end
end
