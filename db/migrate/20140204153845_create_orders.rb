class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :schedule, index: true
      t.integer :quantity
      t.text :comment
    end
  end
end
