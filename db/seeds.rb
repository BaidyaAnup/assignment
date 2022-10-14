# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Orange.destroy_all
Apple.destroy_all
Basket.destroy_all

b1 = Basket.create!(
  :capacity => 27,
  :fill_rate => 0
)

b2 = Basket.create!(
  :capacity => 5,
  :fill_rate => 0
)

b3 = Basket.create!(
  :capacity => 5,
  :fill_rate => 0
)

a1 = Apple.create!(
  :basket => b1,
  :variety => "Red"
)

a2 = Apple.create!(
  :basket => b2,
  :variety => "Green"
)

a3 = Apple.create!(
  :basket => b3,
  :variety => "Pink"
)

o1 = Orange.create!