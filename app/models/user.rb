class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password
  validates :email, :presence => true, :format => { :with => VALID_EMAIL_REGEX }, :uniqueness => true
  validates :password, :length => { :minimum => 6 }
  validates :password_confirmation, :presence => "true"
end
