class Comment < ActiveRecord::Base
  belongs_to :item
  attr_accessible :commenter, :content
end
