class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = %w[0 1 2 3 4 5]

  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true }
end
