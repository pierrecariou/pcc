class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  has_many :articles
  has_many :comments
  has_many :sub_comments
  has_many :answers
  has_many :comment_articles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
