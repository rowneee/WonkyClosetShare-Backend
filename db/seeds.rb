# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name: "Roni", username: "rowneee", gender: "Female", password: "1234")
user2 = User.create(name: "Cari", username: "cariii", gender: "Female", password: "1234")
user3 = User.create(name: "John", username: "johnnn", gender: "Male", password: "1234")
user4 = User.create(name: "Theo", username: "theo", gender: "Male", password: "1234")
user5 = User.create(name: "Liz", username: "lizzz", gender: "Female", password: "1234")
user6 = User.create(name: "Fill", username: "fill", gender: "Male", password: "1234")
user7 = User.create(name: "Tom", username: "tommm", gender: "Male", password: "1234")
user8 = User.create(name: "Paul", username: "paulll", gender: "Male", password: "1234")

link1 = Link.create(owner_id: user1.id, borrower_id: user2.id)
link2 = Link.create(owner_id: user3.id, borrower_id: user4.id)
link3 = Link.create(owner_id: user5.id, borrower_id: user6.id)
link4 = Link.create(owner_id: user7.id, borrower_id: user8.id)

item1 = Item.create(owner_id: user1.id, brand: "Givenchy", color: "white", size: 4, description: "nice shirt", category: "Tops", img_url: "https://m.media-amazon.com/images/I/A1ntnF3PJOL._CLa%7C2140,2000%7C615UVUlYFTL.png%7C0,0,2140,2000+0.0,0.0,2140.0,2000.0._UX342_.png")
item1 = Item.create(owner_id: user1.id, brand: "Gucci", color: "red", size: 2, description: "ugly shirt", category: "Tops", img_url: "https://cdnc.lystit.com/1200/630/tr/photos/gucci/476034X5V046682-Red-6f0369f7-.jpeg")
item1 = Item.create(owner_id: user1.id, borrower_id: user2.id, brand: "Prada", color: "black", size: 28, description: "bell bottoms", category: "Bottoms", img_url: "https://images.prod.meredith.com/product/3cbc74f94e8d2729b3264e90a60e5fad/1555553028987/l/track-pant-black-prada-pants")
item1 = Item.create(owner_id: user1.id, borrower_id: user2.id, brand: "Yeezy", color: "black", size: 38, description: "dad shoes", category: "Shoes", img_url: "https://cdn5.kicksonfire.com/wp-content/uploads/2019/06/adidas-Yeezy-Boost-350-V2-Black-1-681x437.jpg?x93947")
item1 = Item.create(owner_id: user1.id, borrower_id: user2.id, brand: "Off-White", color: "blue", size: 42, description: "tennis shoes", category: "Shoes", img_url: "https://www.flightclub.com/media/catalog/product/cache/1/small_image/360x257/9df78eab33525d08d6e5fb8d27136e95/8/0/804093_01.jpg")
item1 = Item.create(owner_id: user1.id, brand: "Supreme", color: "red", size: 0, description: "badass hat", category: "Accessories", img_url: "https://stockx.imgix.net/products/streetwear/Supreme-Contrast-Ripstop-Camp-Cap-Red.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1544643202")
