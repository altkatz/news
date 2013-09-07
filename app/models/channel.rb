class Channel < ActiveRecord::Base
  has_many :columns
  validates :name, presence: true
end
