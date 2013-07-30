class Post < ActiveRecord::Base
  attr_accessible :content, :source, :title, :state
end
