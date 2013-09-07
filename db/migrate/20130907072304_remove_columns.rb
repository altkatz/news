class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :columns_articles, :id
  end
end
