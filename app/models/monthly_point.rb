# frozen_string_literal: true

class MonthlyPoint < ApplicationRecord
  belongs_to :user

  before_validation :initialize_start_and_end_dates, on: :create
  after_save :claim_reward

  validates_numericality_of :points, allow_nil: false
  validates_presence_of :start_date, :end_date
  validates_uniqueness_of :user_id, scope: %i[start_date end_date]

  def initialize_start_and_end_dates
    today = Date.today
    self.start_date = today.beginning_of_month
    self.end_date = today.end_of_month
  end

  def update_points(earned_points)
    self.points += earned_points
    self.save
  end

  def claim_reward
    ::RewardTrigger::ByPoints.new(self)
  end
end
