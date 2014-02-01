ActiveAdmin.register Schedule do
  permit_params :trip_id, :begin, :end
end
