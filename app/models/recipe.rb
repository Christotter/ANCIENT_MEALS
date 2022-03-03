class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipes_ingredients, dependent: :destroy
  accepts_nested_attributes_for :recipes_ingredients
  has_many :user_favorites, dependent: :destroy
  has_many :ingredients, through: :recipes_ingredients
  has_one_attached :image, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :instructions, presence: true
  validates :era, presence: true
end
