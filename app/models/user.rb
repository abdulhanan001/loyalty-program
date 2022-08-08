# frozen_string_literal: true

class User < ApplicationRecord
  has_many :monthly_points

  after_create :create_monthly_point

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates_inclusion_of :country, in: Country.all
  validates_presence_of :name, :email

  def create_monthly_point
    ::MonthlyPoint.create!(user_id: id)
  end

  def current_monthly_point
    monthly_points.find_by(start_date: Date.today.beginning_of_month)
  end
end
