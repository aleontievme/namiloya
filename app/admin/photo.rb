ActiveAdmin.register Photo do
  permit_params :url, :name, :description

  filter :name
  filter :description

  index do
    column :name
    column :description
    default_actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :url, :as => :file
      f.input :name
      f.input :description, as: :html_editor
    end
    f.actions
  end
end
