# frozen_string_literal: true

class UserReward < ApplicationRecord
  belongs_to :user
  belongs_to :reward

  scope :this_month, -> { where(created_at: DateTime.now.beginning_of_month..DateTime.now.end_of_month) }
end
