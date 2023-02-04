# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

def grab_image(url, offer)
  downloaded_image = URI.open(url)
  offer.photo.attach(io: downloaded_image, filename: "#{url}.jpg")
end

puts "Cleaning database..."
Offer.destroy_all
User.destroy_all

puts "Creating offers and users..."
User.create!(
  first_name: "Carl",
  address: "Shibuya, Tokyo",
  last_name: "Eight",
  email: "carl@email.com",
  password: '123456'
)

User.create!(
  first_name: "Marie",
  address: "Arakawa, Tokyo",
  last_name: "Wagon",
  email: "marie@email.com",
  password: '123456'
)

Offer.create!(
  user: User.all.sample,
  item_name: "Baby Crib",
  rate: "1000",
  rating: "5",
  address: "Minato, Tokyo",
  category: "Furniture",
  description: "A cute white crib made out of oak wood."
  # "v1674729874/Baby Loop/crib_uo9z70.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1674729874/Baby%20Loop/crib_uo9z70.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Red Car",
  rate: "50",
  rating: "4",
  address: "Miyamae, Kanagawa",
  category: "Toys",
  description: "A cute little car, suitable for children from age 4."
  # picture_url: "v1674729870/Baby Loop/car_e7ztnb.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_90,w_200/v1674729870/Baby%20Loop/car_e7ztnb.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Yellow Duck",
  rate: "10",
  rating: "2",
  address: "Setagaya, Tokyo",
  category: "Toys",
  description: "A little yellow rubber duck, great for bathtime."
  # picture_url: "v1674729866/Baby Loop/duck_t23ohe.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1674729866/Baby%20Loop/duck_t23ohe.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Wooden Horse",
  rate: "500",
  rating: "2",
  address: "Bunkyo, Tokyo",
  category: "Toys",
  description: "A horse made out of oak wood."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1674729866/Baby%20Loop/horse_gsh1pc.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Car Seat",
  rate: "1000",
  rating: "5",
  address: "Shinjuku, Tokyo",
  category: "Accessories and goods",
  description: "A todler car seat to enjoy your trips with your family."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114234/Baby%20Loop/pexels-erik-mclean-7708639_imb8ut.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Booster Chair",
  rate: "500",
  rating: "3",
  address: "Shibuya, Tokyo",
  category: "Furniture",
  description: "Portable toddler booster seat for dining table with dishwasher safe tray."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114226/Baby%20Loop/717zYbdvbxL._SL1500__jtbjcb.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Snow Gear",
  rate: "200",
  rating: "4",
  address: "Nagaokakyo, Kyoto",
  category: "Clothes",
  description: "80cm, snow gear with protection to keep your baby warm."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114227/Baby%20Loop/pexels-enrique-hoyos-11258764_u14r66.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Baby Jacket",
  rate: "300",
  rating: "5",
  address: "Moriyama, Shiga",
  category: "Clothes",
  description: "80cm unissex jacket, from the popular youtube show Shinapushyu."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114493/Baby%20Loop/jpgoods_18_344244.jpg_bcqtks.webp", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Stroller",
  rate: "1500",
  rating: "4",
  address: "Hamamatsu, Shizuoka",
  category: "Accessories and goods",
  description: "3-wheel stroller,  designed to tackle all types of surfaces."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114226/Baby%20Loop/814p-Q7eNDL._AC_SL1500__mauywj.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Swing Set",
  rate: "500",
  rating: "4.8",
  address: "Meguro, Tokyo",
  category: "Toys",
  description: "Easy to assembly and fold, you can have an Anpanman-themed park at your own place!"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114226/Baby%20Loop/71EgDFGdADL._AC_SL1500__q5kp1h.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Portable Piano",
  rate: "400",
  rating: "4.3",
  address: "Minami-ku, Kyoto",
  category: "Toys",
  description: "Portable piano and musical set with the popular Anpanman songs."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114224/Baby%20Loop/81OnSryq6EL._AC_SL1500_-2_sz5sxg.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Baby Bathtub",
  rate: "700",
  rating: "5",
  address: "Ikebukuro, Tokyo",
  category: "Accessories and goods",
  description: "A Miffy-themed baby bathtub for children from age 0 to one and a half years."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114223/Baby%20Loop/71_Z-4p1x1L._AC_SL1500__iitjos.jpg", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Baby Carrier",
  rate: "700",
  rating: "4.9",
  address: "Takatsu, Kawasaki, Kanagawa",
  category: "Accessories and goods",
  description: "Comfortable baby carrier with different types of adjustments."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114224/Baby%20Loop/61jmxdLgvyL._AC_SL1000__sz5tx1.jpg", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Activity Cubes",
  rate: "150",
  rating: "3",
  address: "Sapporo, Hokkaido",
  category: "Toys",
  description: "Wooden activity cubes of different format shapes with numbers and figures."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114223/Baby%20Loop/238704593_luvbcq.webp", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Children's Books",
  rate: "300",
  rating: "4",
  address: "Ueno, Tokyo",
  category: "Books",
  description: "A set of 3 image books from Curious George."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114224/Baby%20Loop/81YtnZl2buL_dswfbh.jpg", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Baby Playmat",
  rate: "200",
  rating: "3",
  address: "Toshima, Tokyo",
  category: "Accessories and goods",
  description: "120 x 160cm Baby playmat."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
 grab_image("https://res.cloudinary.com/djteaofzf/image/upload/c_scale,h_200,q_86,w_200/v1675114223/Baby%20Loop/239868725_rul77v.jpg", Offer.last)

puts "Finished!"
