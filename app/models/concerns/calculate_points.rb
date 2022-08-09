# frozen_string_literal: true

module CalculatePoints
  def self.points_earned(total_spent_in_cents)
    (total_spent_in_cents / POINTS_REWARD[:spent_required]).floor * POINTS_REWARD[:points_earned]
  end

  def self.leftover_spent(total_spent_in_cents)
    total_spent_in_cents % POINTS_REWARD[:spent_required]
  end
end