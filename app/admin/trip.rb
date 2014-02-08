ActiveAdmin.register Trip do
  permit_params :name, :description, :category_id, :permalink, :introduction, :cost

  def to_param
    permalink
  end
end
