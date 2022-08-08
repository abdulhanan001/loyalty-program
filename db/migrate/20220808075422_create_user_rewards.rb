# frozen_string_literal: true

class CreateUserRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :user_rewards do |t|
      t.references :user, index: true
      t.references :reward, index: true
      t.string :identifier
      t.boolean :redeemed, default: false


      t.timestamps
    end
  end
end
