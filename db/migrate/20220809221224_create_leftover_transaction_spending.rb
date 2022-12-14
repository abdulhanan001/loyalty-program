# frozen_string_literal: true

class CreateLeftoverTransactionSpending < ActiveRecord::Migration[6.1]
  def change
    create_table :leftover_spendings do |t|
      t.references :user, index: true
      t.integer :local_spent_in_cents, default: 0
      t.integer :overseas_spent_in_cents, default: 0

      t.timestamps null: false
    end
  end
end
