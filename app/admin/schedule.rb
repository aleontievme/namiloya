ActiveAdmin.register Schedule do
  permit_params :trip_id, :begin_date, :end_date, :begin_time, :end_time
end
