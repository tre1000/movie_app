class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  validates :title, presence: true, length: { maximum: 200 }
  # longest movie title ever is only 196 characters, so this should be good.
  # validates :year, presence: true, numericality: { only_integer: true }, length: { is: 4 }
  # validates :plot, presence: true, length: { minimum: 2 }
end
