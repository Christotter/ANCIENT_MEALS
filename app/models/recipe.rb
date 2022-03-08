class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipes_ingredients, dependent: :destroy
  accepts_nested_attributes_for :recipes_ingredients, reject_if: proc { |attributes| attributes[:ingredient_id].blank? }
  has_many :user_favorites, dependent: :destroy
  has_many :ingredients, through: :recipes_ingredients
  has_one_attached :image, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :instructions, presence: true
  validates :era, presence: true

  has_one_attached :photo

  has_many :user_ratings, dependent: :destroy
  # geocoded_by :country_code
  # after_validation :geocode, if: :will_save_change_to_country_code?

  # accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes|
  # attributes['name'].blank? }, allow_destroy: true
end
