# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create({ name: "Garbage Bags", price: 13, image_url: "https://m.media-amazon.com/images/I/81wzI+BepES._AC_SL1500_.jpg", description: "Hefty Ultra Strong 80pack", supplier_id: 1 })

product = Product.create({ name: "BlenderBottle", price: 10, image_url: "https://m.media-amazon.com/images/I/61Rx91iwTqL._AC_SL1500_.jpg", description: "Black 28oz Blender Bottle Shaker", supplier_id: 2 })

product = Product.create({ name: "Socks", price: 20, image_url: "https://m.media-amazon.com/images/I/81ErhRybsXL._AC_UL320_.jpg", description: "Adidas Black Crew Socks, 6pk", supplier_id: 3 })

product = Product.create({ name: "Coffee Pot", price: 140, image_url: "https://m.media-amazon.com/images/I/71zWWzVvSLL._AC_SL1500_.jpg", description: "Kuerig K-Duo Coffee Maker, Black", supplier_id: 1 })

product = Product.create({ name: "Shoe Rack", price: 60, image_url: "https://m.media-amazon.com/images/I/81pE3vcLT4L._AC_SL1500_.jpg", description: "Kottwca Shoe Rack Metal Shoe Storage Organizer, Black", supplier_id: 1 })

supplier = Supplier.create({ name: "P&G", email: "procter_gamble@pg.com", phone_number: "(554) 543 - 8092" })

supplier = Supplier.create({ name: "BlenderBottle", email: "cool_bottles@blender.com", phone_number: "(912) 758 - 0183" })

supplier = Supplier.create({ name: "Adidas", email: "three_stripes@adidas.com", phone_number: "(012) 859 - 8510" })
