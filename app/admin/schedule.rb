ActiveAdmin.register Schedule do
  permit_params :trip_id, :begin_date, :end_date, :begin_time, :end_time

  filter :trip
  filter :begin_date
  filter :end_date

  index do
    column :trip
    column :begin_date
    column :end_date
    default_actions
  end
end
