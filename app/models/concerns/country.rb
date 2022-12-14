# frozen_string_literal: true

module Country
  def self.all
    ISO3166::Country.all.map(&:name)
  end
end
