class Post < ActiveRecord::Base
  attr_accessible :body, :title

  def add_boom!
  	self.body += " BOOM!"
  	save!
  end
end
