# frozen_string_literal: true

class CreateLoyaltyTier < ActiveRecord::Migration[6.1]
  def change
    create_table :loyalty_tiers do |t|
      t.integer :points_required
      t.string :name

      t.timestamps null: false
    end
  end
end
