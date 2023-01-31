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
  address: "10 Clifton Gardens London W9 1DT",
  last_name: "Eight",
  email: "carl@email.com",
  password: '123456'
)

Offer.create!(
  user: User.all.sample,
  item_name: "Baby Crib",
  rate: "7",
  rating: "5"
  address: "102 Miyazakidai Denen Mansion, Miyamaedaira 3-3-13, Miyamae Ward, Kawasaki City, Kanagawa 216-0006"
  category: "Furniture",
  description: "A cute white crib made out of oak wood"
  # "v1674729874/Baby Loop/crib_uo9z70.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1674729874/Baby%20Loop/crib_uo9z70.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Red Car",
  rate: "1",
  rating: "4"
  address: "2-chōme-9-11 Minamiazabu, Minato City, Tokyo 106-0047"
  category: "Toys",
  description: "A cute little car"
  # picture_url: "v1674729870/Baby Loop/car_e7ztnb.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1674729870/Baby%20Loop/car_e7ztnb.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Yellow Duck",
  rate: "0.5",
  rating: "2"
  address: "1-chōme-2-31 Oyamadai, Setagaya City, Tokyo 158-0086"
  category: "Toys",
  description: "A little yellow rubber duck, great for bathtime."
  # picture_url: "v1674729866/Baby Loop/duck_t23ohe.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1674729866/Baby%20Loop/duck_t23ohe.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Wooden Horse",
  rate: "1",
  rating: "2"
  address: "Plaza Hakusan 203,Bunkyoku Hakusan 2-13-15, Tokyo 112-0001"
  category: "Toys",
  description: "A horse made out of oak wood."
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1674729866/Baby%20Loop/horse_gsh1pc.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Car seat",
  rate: "4",
  rating: "5"
  address: "Takadanobaba, 1 Chome-34-6,Shinjuku City, Tokyo 169-0075"
  category: "Furniture",
  description: "A todler car seat to enjoy your trips with your family "
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114234/Baby%20Loop/pexels-erik-mclean-7708639_imb8ut.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Booster chair",
  rate: "2",
  rating: "3"
  address: " Shibuya City, Hatagaya, 2-chōme-19ー1, Tokyo 151-0072"
  category: "Furniture",
  description: "Portable toddler booster seat for dining table with dishwasher safe tray"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114226/Baby%20Loop/717zYbdvbxL._SL1500__jtbjcb.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Snow gear",
  rate: "3",
  rating: "4"
  address: "9-4 Towaen, Nagaokakyo-shi Kyoto, Japan 617-0834"
  category: "Clothes",
  description: "80cm, snow gear with protection to keep your baby warm"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114227/Baby%20Loop/pexels-enrique-hoyos-11258764_u14r66.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Shinapushyu baby jacket",
  rate: "1",
  rating: "5"
  address: "03 Furutaka, 406-2 Furutaka-cho, Moriyama-shi, Shiga-ken 524-0044"
  category: "Clothes",
  description: "80cm Unissex jacket, from the popular youtube show Shinapushyu"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114493/Baby%20Loop/jpgoods_18_344244.jpg_bcqtks.webp", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Stroller",
  rate: "8",
  rating: "4"
  address: "Hamamatsu Tenma Building 503, Tenma-cho 311-14, Hamamatsu-shi, 430-0935 Shizuoka-ken"
  category: "Accessories and goods",
  description: "3 wheel stroller,  designed to tackle all types of surfaces "
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114226/Baby%20Loop/814p-Q7eNDL._AC_SL1500__mauywj.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Anpanman Easy Assembly Swing Set Park"
  rate: "5",
  rating: "2.8"
  address: "Sankyo Yokohama Building 201, Chojamachi 5-85, Naka-ku, Yokohama-shi 231-0033, Kanagawa-ken"
  category: "Toys",
  description: "Easy to assembly and fold, you can have a park at your own place"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114226/Baby%20Loop/71EgDFGdADL._AC_SL1500__q5kp1h.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Anpanman portable piano"
  rate: "3.5",
  rating: "4.3"
  address: "Chouette D 106, 21-2 Karahashi Omiyajiricho, Minami-ku, Kyoto-shi, Kyoto 601-8467"
  category: "Toys",
  description: "Portable piano and musical set, with the popular Anpanman songs"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114224/Baby%20Loop/81OnSryq6EL._AC_SL1500_-2_sz5sxg.jpg", Offer.last)

Offer.create!(
  user: User.all.sample,
  item_name: "Mify baby bathtub"
  rate: "4",
  rating: "5"
  address: "4-1-3-1112 Asahi-dori, Chuo-ku, Kobe-shi, Hyogo-ken, 651-0095"
  category: "Accessories and goods",
  description: "Baby bathtub for childrens from age 0 to one and a half years"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114223/Baby%20Loop/71_Z-4p1x1L._AC_SL1500__iitjos.jpg", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Baby carrier"
  rate: "5",
  rating: "4.9"
  address: "Takatsu Ward, Kawasaki, Kanagawa 213-0035"
  category: "Accessories and goods",
  description: "Confortable baby carrier with different type of adjustments"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114224/Baby%20Loop/61jmxdLgvyL._AC_SL1000__sz5tx1.jpg", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Wooden Activity Cube"
  rate: "1",
  rating: "3"
  address: "Kumaushi, Hamanaka-cho Akkeshi-gun, Hokkaido 350-1289"
  category: "Toys",
  description: "Activity cube with different format shapes with numbers and figures"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114223/Baby%20Loop/238704593_luvbcq.webp", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Curious George set of ilustrate books"
  rate: "2",
  rating: "4"
  address: "2-17-38 Asano, Kokurakita-ku, Kitakyushu-shi, Fukuoka, 802-0001"
  category: "Books",
  description: "3 image books, from Curious George"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114224/Baby%20Loop/81YtnZl2buL_dswfbh.jpg", Offer.last)


Offer.create!(
  user: User.all.sample,
  item_name: "Baby Playmat"
  rate: "6",
  rating: "3"
  address: "6-chōme-1-15 Nagasaki, Toshima City, Tokyo 171-0051"
  category: "",
  description: "120 x 160cm Baby playmat"
  # picture_url: "v1674729866/Baby Loop/horse_gsh1pc.jpg"
)
grab_image("https://res.cloudinary.com/djteaofzf/image/upload/v1675114223/Baby%20Loop/239868725_rul77v.webp", Offer.last)


puts "Finished!"
