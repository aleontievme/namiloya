ActiveAdmin.register Order do
  permit_params :name, :schedule_id, :quantity, :comment

  filter :name
  filter :phone
  filter :email
  filter :comment

  index do
    column :name
    column :phone
    column :email
    default_actions
  end

  controller do
    defaults :finder => :find_by_permalink
  end
end
