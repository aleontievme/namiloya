ActiveAdmin.register Trip do
  permit_params :name, :description, :category_id, :permalink, :introduction, :cost
  controller do
    defaults :finder => :find_by_permalink
  end
end
