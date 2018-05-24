Supplier.create!([
  {name: "Eastbay", email: "eastbay@gmail.com", phone_number: "847-123-4567"},
  {name: "Finish Line", email: "footlocker@gmail.com", phone_number: "847-765-4321"},
  {name: "Foot Locker", email: "footlocker@gmail.com", phone_number: "847-777-7777"}
])
Product.create!([
  {name: "Lebron XV", price: "185.0", image_url: "https://i2.wp.com/www.nicekicks.com/files/2018/03/nike-lebron-15-neon-1-1.jpg?fit=750%2C400&ssl=1", description: "The Lebron 15 is his most recent shoe released by Nike", in_stock: true, supplier_id: nil},
  {name: "Dame 4", price: "80.0", image_url: "https://s7d2.scene7.com/is/image/dkscdn/17ADIMLLLRD4WHTBLPRF_White_Black_is/", description: "white and black Dame 4s are released by Adidas", in_stock: true, supplier_id: nil},
  {name: "Kobe 9", price: "180.0", image_url: "https://cdn.thesolesupplier.co.uk/2017/09/Nike-Kobe-9-EM-Dusty-Cactus1.png", description: "In my opinion, the most comfortable basketball shoes from Kobe Bryant and Nike", in_stock: true, supplier_id: nil},
  {name: "Lebron XV", price: "185.0", image_url: "https://i2.wp.com/www.nicekicks.com/files/2018/03/nike-lebron-15-neon-1-1.jpg?fit=750%2C400&ssl=1", description: "The Lebron 15 is his most recent shoe released by Nike", in_stock: true, supplier_id: nil},
  {name: "PG2", price: "120.0", image_url: "https://cdn.shoepalace.com/product/images/960x/878627-417_01.jpg", description: "The Paul George 2 is a comfortable basketball shoe released by Nike", in_stock: true, supplier_id: nil},
  {name: "Kyrie 3", price: "150.0", image_url: "https://image.goat.com/crop/750/attachments/product_template_pictures/images/004/143/867/original/852395_103.png.png", description: "Kyrie 3 in white chrome released by Nike", in_stock: true, supplier_id: nil},
  {name: "Dame 4", price: "80.0", image_url: "https://s7d2.scene7.com/is/image/dkscdn/17ADIMLLLRD4WHTBLPRF_White_Black_is/", description: "white and black Dame 4s are released by Adidas", in_stock: true, supplier_id: nil},
  {name: "Kobe 9", price: "180.0", image_url: "https://cdn.thesolesupplier.co.uk/2017/09/Nike-Kobe-9-EM-Dusty-Cactus1.png", description: "In my opinion, the most comfortable basketball shoes from Kobe Bryant and Nike", in_stock: true, supplier_id: nil},
  {name: "Crazy Explosives", price: "120.0", image_url: "https://images.footlocker.com/pi/BW0931/zoom/adidas-crazy-explosive-pk-mens", description: "These shoes are crazy comfortable and are a collab from Andrew Wiggins of the Timberwolves and Adidas", in_stock: true, supplier_id: nil},
  {name: "Kyrie 3", price: "200.0", image_url: "https://image.goat.com/crop/750/attachments/product_template_pictures/images/004/143/867/original/852395_103.png.png", description: "Kyrie 3 in white chrome released by Nike", in_stock: true, supplier_id: nil},
  {name: "Lebron Soldiers", price: "95.0", image_url: "https://images.footlocker.com/pi/97644401/zoom/nike-lebron-soldier-11-mens", description: "These are the 11th model made from Lebron James and Nike. ", in_stock: true, supplier_id: nil}
])
