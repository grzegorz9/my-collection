class Item < ActiveRecord::Base
  attr_accessible :description, :title, :category_id, :subcategory
  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :subcategory, presence: true, length: { maximum: 20 }
  has_many :comments  
  belongs_to :category
end
