# frozen_string_literal: true

class Reward < ApplicationRecord
  has_many :user_rewards

  validates_presence_of :name
end
