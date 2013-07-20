class Post < ActiveRecord::Base
  attr_accessible :content, :source, :title
  validates :title, :presence => true
  validates :content, :presence => true
  validates :source, :presence => true
  validates_format_of :source, :with => URI::regexp(%w(http https))
end
