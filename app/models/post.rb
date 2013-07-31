class Post < ActiveRecord::Base
  attr_accessible :content, :source, :title, :state
  validates_presence_of :content, :source, :title

  validates_format_of :source, :with =>  /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix

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
