class Comment < ActiveRecord::Base
  belongs_to :item
  attr_accessible :commenter, :content
  
  validates_presence_of :commenter
  validates_presence_of :content
  
end
