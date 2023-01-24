# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Offer.destroy_all
User.destroy_all


puts "Creating offers and users..."
User.create!(
  first_name: "Carl",
  address: "10 Clifton Gardens London W9 1DT",
  last_name: "Eight",
  email: "carl@email.com",
  password: '123456'
)
5.times do
  Offer.create!(
    user: User.all.sample,
    item_name: "Baby Car",
    rate: "8",
    category: "Toys",
    description: "A cute little car"
    # picture_url: "https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200"
  )
end
puts "Finished!"
