class AddBoxIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :box_id, :integer
  end
end
