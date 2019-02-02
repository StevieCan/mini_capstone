User.create!([
  {name: "Joe Cool", email: "joe@gmail.com", password_digest: "$2a$10$uFMXMyOjkkayxHUL4bIZRuGoDswXfxEX2vjuIUpW0kcaAr2oNBZHy", admin: false},
  {name: "Sue Everyone", email: "sue@gmail.com", password_digest: "$2a$10$zs7ZPv3bdtccaH3.6UQb9uEF3ebgwSz8Wye4TUMD7CCbyiGQKycKC", admin: false},
  {name: "starbucks coffee", email: "starbucks@gmail.com", password_digest: "$2a$10$JJsl2yO9MuZPBFC9.Ukqu.nxTGBbZusVIdd88gU0iAFWmo/3dAN9K", admin: false},
  {name: "Steve Han", email: "shan@gmail.com", password_digest: "$2a$10$/YTjdRal4656VxKxz4IViOJ9EF3/Yc1PboYJWBoYHViSjWO0aou8G", admin: false},
  {name: "Turkey", email: "turkeytom@gmail.com", password_digest: "$2a$10$zGUgZksKptqyCoxRK60uYePA31StuyUe7FLn94NaTbTXtLGszwYYe", admin: false}
])



Category.create!([
  {name: "Adidas"},
  {name: "Nike"},
  {name: "Cheap"},
  {name: "Expensive"}
])
Image.create!([
  {image_url: nil, url: "https://s7d2.scene7.com/is/image/dkscdn/17ADIMLLLRD4WHTBLPRF_White_Black_is/", alt: "Dame 4", product_id: 4},
  {image_url: nil, url: "https://cdn.thesolesupplier.co.uk/2017/09/Nike-Kobe-9-EM-Dusty-Cactus1.png", alt: "Kobe 9", product_id: 5},
  {image_url: nil, url: "https://i2.wp.com/www.nicekicks.com/files/2018/03/nike-lebron-15-neon-1-1.jpg?fit=750%2C400&ssl=1", alt: "Lebron XV", product_id: 7},
  {image_url: nil, url: "https://cdn.shoepalace.com/product/images/960x/878627-417_01.jpg", alt: "PG2", product_id: 8},
  {image_url: nil, url: "https://image.goat.com/crop/750/attachments/product_template_pictures/images/004/143/867/original/852395_103.png.png", alt: "Kyrie 3", product_id: 9},
  {image_url: nil, url: "https://s7d2.scene7.com/is/image/dkscdn/17ADIMLLLRD4WHTBLPRF_White_Black_is/", alt: "Dame 4", product_id: 10},
  {image_url: nil, url: "https://cdn.thesolesupplier.co.uk/2017/09/Nike-Kobe-9-EM-Dusty-Cactus1.png", alt: "Kobe 9", product_id: 11},
  {image_url: nil, url: "https://images.footlocker.com/pi/BW0931/zoom/adidas-crazy-explosive-pk-mens", alt: "Crazy Explosives", product_id: 13},
  {image_url: nil, url: "https://image.goat.com/crop/750/attachments/product_template_pictures/images/004/143/867/original/852395_103.png.png", alt: "Kyrie 3", product_id: 3},
  {image_url: nil, url: "https://images.footlocker.com/pi/97644401/zoom/nike-lebron-soldier-11-mens", alt: "Lebron Soldiers", product_id: 14},
  {image_url: nil, url: "https://i2.wp.com/www.nicekicks.com/files/2018/03/nike-lebron-15-neon-1-1.jpg?fit=750%2C400&ssl=1", alt: "Lebron XV", product_id: 1}
])
Order.create!([
  {user_id: 3, subtotal: nil, tax: nil, total: nil}
])
Product.create!([
  {name: "Dame 4", price: "80.0", image_url: "https://s7d2.scene7.com/is/image/dkscdn/17ADIMLLLRD4WHTBLPRF_White_Black_is/", description: "white and black Dame 4s are released by Adidas", in_stock: true, supplier_id: 3},
  {name: "Kobe 9", price: "180.0", image_url: "https://cdn.thesolesupplier.co.uk/2017/09/Nike-Kobe-9-EM-Dusty-Cactus1.png", description: "In my opinion, the most comfortable basketball shoes from Kobe Bryant and Nike", in_stock: true, supplier_id: 3},
  {name: "PG2", price: "120.0", image_url: "https://cdn.shoepalace.com/product/images/960x/878627-417_01.jpg", description: "The Paul George 2 is a comfortable basketball shoe released by Nike", in_stock: true, supplier_id: 1},
  {name: "Kyrie 3", price: "150.0", image_url: "https://image.goat.com/crop/750/attachments/product_template_pictures/images/004/143/867/original/852395_103.png.png", description: "Kyrie 3 in white chrome released by Nike", in_stock: true, supplier_id: 3},
  {name: "Dame 4", price: "80.0", image_url: "https://s7d2.scene7.com/is/image/dkscdn/17ADIMLLLRD4WHTBLPRF_White_Black_is/", description: "white and black Dame 4s are released by Adidas", in_stock: true, supplier_id: 3},
  {name: "Kobe 9", price: "180.0", image_url: "https://cdn.thesolesupplier.co.uk/2017/09/Nike-Kobe-9-EM-Dusty-Cactus1.png", description: "In my opinion, the most comfortable basketball shoes from Kobe Bryant and Nike", in_stock: true, supplier_id: 1},
  {name: "Crazy Explosives", price: "120.0", image_url: "https://images.footlocker.com/pi/BW0931/zoom/adidas-crazy-explosive-pk-mens", description: "These shoes are crazy comfortable and are a collab from Andrew Wiggins of the Timberwolves and Adidas", in_stock: true, supplier_id: 3},
  {name: "Kyrie 3", price: "200.0", image_url: "https://image.goat.com/crop/750/attachments/product_template_pictures/images/004/143/867/original/852395_103.png.png", description: "Kyrie 3 in white chrome released by Nike", in_stock: true, supplier_id: 2},
  {name: "Lebron Soldiers", price: "95.0", image_url: "https://images.footlocker.com/pi/97644401/zoom/nike-lebron-soldier-11-mens", description: "These are the 11th model made from Lebron James and Nike. ", in_stock: true, supplier_id: 1},
  {name: "Yeezy", price: "500.0", image_url: nil, description: "This is so overpriced", in_stock: true, supplier_id: 2},
  {name: "Lebron XV", price: "200.0", image_url: "https://i2.wp.com/www.nicekicks.com/files/2018/03/nike-lebron-15-neon-1-1.jpg?fit=750%2C400&ssl=1", description: "The Lebron 15 is his most recent shoe released by Nike", in_stock: true, supplier_id: 1}
])

Supplier.create!([
  {name: "Eastbay", email: "eastbay@gmail.com", phone_number: "847-123-4567"},
  {name: "Finish Line", email: "footlocker@gmail.com", phone_number: "847-765-4321"},
  {name: "Foot Locker", email: "footlocker@gmail.com", phone_number: "847-777-7777"}
])

CartedProduct.create!([
  {user_id: 1, product_id: 5, quantity: 10, status: "removed", order_id: nil},
  {user_id: 2, product_id: 7, quantity: 10, status: "carted", order_id: nil},
  {user_id: 3, product_id: 3, quantity: 2, status: "purchased", order_id: 1}
])

ProductCategory.create!([
  {category_id: 1, product_id: 1},
  {category_id: 1, product_id: 4},
  {category_id: 2, product_id: 5},
  {category_id: 2, product_id: 7},
  {category_id: 1, product_id: 8},
  {category_id: 1, product_id: 9},
  {category_id: 1, product_id: 10},
  {category_id: 2, product_id: 11},
  {category_id: 2, product_id: 13},
  {category_id: 1, product_id: 3},
  {category_id: 1, product_id: 14},
  {category_id: 1, product_id: 1}
])
