# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Added seed for LOYALTY_TIERS_DATA
LOYALTY_TIERS_DATA = [
  { name: 'Standard', points_required: 0 },
  { name: 'Gold', points_required: 1000 },
  { name: 'Platinum', points_required: 5000 }
].freeze

LOYALTY_TIERS_DATA.each do |data|
  LoyaltyTier.create!(name: data[:name], points_required: data[:points_required])
end

REWARDS_DATA = [
  { name: 'Monthly Free Coffee', criteria: 'Accumulate 100 points in one calendar month' },
  { name: 'Birthday Free Coffee', criteria: 'Received automatically during your birthday month' },
  { name: '5% Cash Rebate', criteria: 'Have 10 or more transactions that have an amount > $100 ' },
  { name: 'Free Movie Ticket', criteria: 'Spend > $1000 within 60 days of their first transaction' },
  { name: '4x Airport Lounge Access', criteria: 'Become a gold tier customer' }
].freeze

REWARDS_DATA.each do |data|
  Reward.create!(name: data[:name], criteria: data[:criteria])
end
