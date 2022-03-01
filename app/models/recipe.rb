class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipes_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipes_ingredients
  validates :name, presence: true, uniqueness: true
  validates :instructions, presence: true, uniqueness: true
  validates :era, presence: true, uniqueness: true
end
