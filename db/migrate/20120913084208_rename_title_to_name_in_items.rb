class RenameTitleToNameInItems < ActiveRecord::Migration
  def change
    rename_column :items, :title, :name

  end
end
