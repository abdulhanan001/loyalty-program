# frozen_string_literal: true

class RemoveLeftoverspentFromTransaction < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :leftover_spent_in_cents, :integer
  end
end
