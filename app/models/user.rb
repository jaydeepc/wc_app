class User < ActiveRecord::Base
  validates :email, presence: true
  attr_accessor :email, :experiment_group
end
