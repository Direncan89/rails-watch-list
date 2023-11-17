class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 7 }
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates_uniqueness_of :movie_id, scope: :list_id
end
