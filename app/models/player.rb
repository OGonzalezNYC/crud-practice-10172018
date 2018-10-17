class Player < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
	validates :jersey_number, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 99}
	validates :foreigner, inclusion: { in: [true, false] }
end
