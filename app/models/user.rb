class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments
  has_many :commented_posts, through: :comments, source: :post

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password_digest

end
