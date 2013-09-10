class Article < ActiveRecord::Base
  has_and_belongs_to_many :columns, :join_table => :columns_articles
  validates :title, :summary, presence: true
  validates :status, inclusion: { in: %w(draft published banned),
    message: "%{value} is not a valid status" }

  default_scope { where(status: 'published') }

  scope :published, -> { where(status: 'published') }
  scope :draft, -> { where(status: 'draft') }
  scope :banned, -> { where(status: 'banned') }

end
