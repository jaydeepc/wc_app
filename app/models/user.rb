class User < ActiveRecord::Base
  validates :email, presence: true
  attr_accessor :email
end
