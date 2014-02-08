class AddIntroductionToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :introduction, :text
  end
end
