ActiveAdmin.register Trip do
  #permit_params :name, :description, :category_id, :permalink, :introduction, :cost
  controller do
    defaults :finder => :find_by_permalink

    def permitted_params
      params.permit!
      #(:trip => [:name, :trip_category_id, :description, :keywords, :trip_photos, :trip_photos => [ :url ]])
    end
  end

  form do |f|
    f.inputs "Trip" do
      f.input :name, :label => "Name"
      f.input :permalink, :label => "Permalink"
      f.input :introduction, :label => "Introduction", as: :html_editor
      f.input :description, :label => "Description", as: :html_editor
      f.input :order_num, :label => "Order"
      f.input :cost, :label => "Cost"
      
      f.has_many :trip_photos, :allow_destroy => true, :heading => 'Photos' do |s|
        s.input :photo, :label_method => :id, :value_method => :id_u
        #s.input :url, :as => :file, :label => "Photo"
        #s.inputs "Photos" do |p|
        #  p.input :url, :as => :file, :label => "Photo"
        #end
      end
    end
    f.actions
  end

end
