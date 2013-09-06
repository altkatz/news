class AddDateToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :publish_date, :datetime
  end
end
