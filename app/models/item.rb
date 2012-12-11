class Item < ActiveRecord::Base
  attr_accessible :description, :title, :category_id
  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  has_many :comments  
  belongs_to :category
end
