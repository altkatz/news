class Channel < ActiveRecord::Base
  has_many :columns
  validates :name, presence: true, uniqueness: true
  validates_associated :columns
end
