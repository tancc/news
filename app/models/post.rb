class Post < ActiveRecord::Base
  attr_accessible :content, :source, :title, :state

  state_machine :initial => :draft do
    # state :draft, :publish, :unpublish

    event :confirm_publish do
      transition [:draft, :unpublish] => :publish
    end

    event :confirm_unpublish do
      transition :publish => :unpublish
    end
  end

end
