class AddOrderNumberToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :order_num, :integer
  end
end
