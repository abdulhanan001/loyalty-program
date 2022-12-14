# frozen_string_literal: true

class CreateMonthlyPoints < ActiveRecord::Migration[6.1]
  def change
    create_table :monthly_points do |t|
      t.references :user, index: true
      t.integer :points, default: 0
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
