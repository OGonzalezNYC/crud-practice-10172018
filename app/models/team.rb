class Team < ApplicationRecord
  has_many :players
  validates :name, presence: true
	validates :city, presence: true
end
