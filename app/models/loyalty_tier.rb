# frozen_string_literal: true

class LoyaltyTier < ApplicationRecord
  POINTS_NEEDED = {
    "Platinum" => 5000,
    "Gold" => 1000,
    "Standard" => 0,
  }

  has_many :users

  validates_presence_of :name, :points_required
end
