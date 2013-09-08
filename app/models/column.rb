class Column < ActiveRecord::Base
  belongs_to :channel
  has_and_belongs_to_many :articles, :join_table => :columns_articles
  validates :name, presence: true, uniqueness: true
  validates_associated :articles
end
