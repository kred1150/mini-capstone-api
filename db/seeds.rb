# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create({ name: "Garbage Bags", price: 13, description: "Hefty Ultra Strong 80pack", supplier_id: 1, inventory: 190 })

product = Product.create({ name: "BlenderBottle", price: 10, description: "Black 28oz Blender Bottle Shaker", supplier_id: 2, inventory: 231})

product = Product.create({ name: "Socks", price: 20, description: "Adidas Black Crew Socks, 6pk", supplier_id: 3, inventory: 123 })

product = Product.create({ name: "Coffee Pot", price: 140, description: "Kuerig K-Duo Coffee Maker, Black", supplier_id: 1, inventory: 43 })

product = Product.create({ name: "Shoe Rack", price: 60, description: "Kottwca Shoe Rack Metal Shoe Storage Organizer, Black", supplier_id: 1, inventory: 88 })

supplier = Supplier.create({ name: "P&G", email: "procter_gamble@pg.com", phone_number: "(554) 543 - 8092" })

supplier = Supplier.create({ name: "BlenderBottle", email: "cool_bottles@blender.com", phone_number: "(912) 758 - 0183" })

supplier = Supplier.create({ name: "Adidas", email: "three_stripes@adidas.com", phone_number: "(012) 859 - 8510" })

image = Image.create({ url: "https://m.media-amazon.com/images/I/81wzI+BepES._AC_SL1500_.jpg", product_id: 1 })

image = Image.create({ url: "https://m.media-amazon.com/images/I/61Rx91iwTqL._AC_SL1500_.jpg", product_id: 2 })

image = Image.create({ url: "https://m.media-amazon.com/images/I/81ErhRybsXL._AC_UL320_.jpg", product_id: 3 })

image = Image.create({ url: "https://m.media-amazon.com/images/I/71zWWzVvSLL._AC_SL1500_.jpg", product_id: 4 })

image = Image.create({ url: "https://m.media-amazon.com/images/I/81pE3vcLT4L._AC_SL1500_.jpg", product_id: 5 })
