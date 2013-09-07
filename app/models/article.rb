class Article < ActiveRecord::Base
  has_and_belongs_to_many :columns, :join_table => :columns_articles
end
