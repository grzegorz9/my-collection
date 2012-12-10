class Item < ActiveRecord::Base
  attr_accessible :description, :title, :category_id
  has_many :comments  
  belongs_to :category
end
