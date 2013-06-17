class User < ActiveRecord::Base
  attr_accessible :title, :body, :email, :username
end
