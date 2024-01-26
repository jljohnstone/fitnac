class Location < ApplicationRecord
  validates :name, presence: true
  validates :latitude,
    presence: true,
    comparison: {
      less_than_or_equal_to: 90,
      greater_than_or_equal_to: -90
    }
  validates :longitude,
    presence: true,
    comparison: {
      less_than_or_equal_to: 180,
      greater_than_or_equal_to: -180
    }
end
