class AddSectionToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :section, :string
  end
end
