class Post < ActiveRecord::Base
  attr_accessible :content, :source, :title
  validates :title, :presence => true
end
