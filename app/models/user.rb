# frozen_string_literal: true

class User < ApplicationRecord
  has_many :monthly_point

  after_create :create_monthly_points

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates_inclusion_of :country, in: Country.all

  def create_monthly_points
    ::MonthlyPoint.create!(user_id: id)
  end
end
