class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :user_favorites

  has_many :user_ratings
  has_many :recipes

  validates :email, presence: true
  validates :name, presence: true
end
