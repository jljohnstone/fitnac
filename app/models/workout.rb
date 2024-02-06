class Workout < ApplicationRecord
  belongs_to :location
  validates :starts_at,
    presence: true,
    comparison: {
      greater_than_or_equal_to: Time.current
    }
end
