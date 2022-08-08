# frozen_string_literal: true

class MonthlyPoint < ApplicationRecord
  belongs_to :user

  before_create : initialize_start_and_end_dates

  def initialize_start_and_end_dates
    today = Date.today
    self.start_date = today.beginning_of_month
    self.end_date = today.end_of_month
  end
end
