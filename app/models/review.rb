class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [0, 1, 2, 3, 4, 5].freeze
  validates :rating, inclusion: { in: RATING }
  validates :content, presence: true, length: { minimum: 1 }
  validates :rating, numericality: true
end
