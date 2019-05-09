class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users_who_commented, through: :comments, source: :user

  validates_presence_of :title
  validates_presence_of :content
end
