class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :img_url, :string
    add_column :articles, :publisher, :string
  end
end
