namespace :setup do
  desc 'Create Loyalty Tiers'
  task create_loyalty_tiers: :environment do
    LOYALTY_TIERS_DATA.each do |data|
      LoyaltyTier.create!(name: data[:name], points_required: data[:points_required])
    end
  end
end
