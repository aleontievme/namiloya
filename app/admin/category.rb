ActiveAdmin.register Category do
  permit_params :name, :section

  index do
    column :name
  end
end
