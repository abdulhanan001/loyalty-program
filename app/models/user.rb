# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_rewards
  has_many :rewards, through: :user_rewards, source: :reward
  has_many :monthly_points


  belongs_to :loyalty_tier

  before_validation :set_standard_loyalty_tier, on: :create
  after_create :create_monthly_point

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates_inclusion_of :country, in: Country.all
  validates_presence_of :name, :email

  def create_monthly_point
    ::MonthlyPoint.create!(user_id: id)
  end

  def set_standard_loyalty_tier
    self.loyalty_tier = LoyaltyTier.find_by(name: 'Standard')
  end

  def current_monthly_point
    monthly_points.find_by(start_date: Date.today.beginning_of_month)
  end
end
