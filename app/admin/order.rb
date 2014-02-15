ActiveAdmin.register Order do
  permit_params :schedule_id, :quantity, :comment
  controller do
    defaults :finder => :find_by_permalink
  end
end
