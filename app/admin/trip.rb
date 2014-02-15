ActiveAdmin.register Trip do
  permit_params :name, :description, :category_id, :permalink, :introduction, :cost
end
