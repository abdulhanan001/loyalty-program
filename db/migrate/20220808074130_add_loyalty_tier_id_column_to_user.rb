# frozen_string_literal: true

class AddLoyaltyTierIdColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :loyalty_tier, index: true
  end
end
