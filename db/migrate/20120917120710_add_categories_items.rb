class AddCategoriesItems < ActiveRecord::Migration
  def up
    create_table 'categories_items', :id => false do |t|
      t.integer :category_id
      t.integer :item_id
    end
  end

  def down
    drop_table :categories_items
  end
end
